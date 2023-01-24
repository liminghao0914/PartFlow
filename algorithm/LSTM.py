import pprint
import tensorflow as tf
import keras
import keras.backend as K
from keras.preprocessing.sequence import TimeseriesGenerator
from keras.layers import LSTM
from keras.layers import Dense, Embedding
from keras.models import Sequential
from keras.utils.np_utils import to_categorical
import os
import random
import pymongo
import numpy as np
import csv
from sklearn.metrics import mean_squared_log_error
import matplotlib.pyplot as plt

physical_devices = tf.config.list_physical_devices('GPU')
try:
  # Disable first GPU
  tf.config.set_visible_devices(physical_devices[1:], 'GPU')
  logical_devices = tf.config.list_logical_devices('GPU')
  # Logical device was not created for first GPU
  assert len(logical_devices) == len(physical_devices) - 1
except:
  # Invalid device or cannot modify virtual devices once initialized.
  print("Invalid device or cannot modify virtual devices once initialized.")

START_METHOD = 'attachBaseContext(Landroid/content/Context;)V#Start'
# MONGODB_HOST = "mongodb://192.168.31.68:27017/"
MONGODB_HOST = "mongodb://localhost:27017/"

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
# from keras.utils.multi_gpu_utils import multi_gpu_model


def mongodb_process(uid):
  myclient = pymongo.MongoClient(MONGODB_HOST)
  mydb = myclient["db"]
  mycol = mydb[uid]
  mydict = {}
  for x in mycol.find({}):
    method = x.get("status").split("Delta")[0] + x.get("descript")
    if x.get("class") not in mydict.keys():
      mydict[x.get("class")] = {method: [[x.get("runtime"), x.get("timestamp")]]}
    else:
      if method not in mydict[x.get("class")].keys():
        mydict[x.get("class")][method] = [[x.get("runtime"), x.get("timestamp")]]
      else:
        mydict[x.get("class")][method] += [[x.get("runtime"), x.get("timestamp")]]
  # pp = pprint.PrettyPrinter(indent=2)
  # pp.pprint(mydict)
  return mydict


def all_timestamp_sort(uid):
  mydict = mongodb_process(uid)
  u = []
  for clazz in mydict.keys():
    for method in mydict[clazz].keys():
      for t in mydict[clazz][method]:
        u.append([clazz, method + "#Start", t[1] - t[0]])
        u.append([clazz, method + "#End", t[1]])
  u_sorted = sorted(u, key=lambda x: x[2])
  return u_sorted


def runtime_filter(clazz, threshold, time_list):
  tmp = []
  for tt in time_list:
    if tt[-1] >= threshold and clazz in tt[0]:
      tmp.append(tt)
  return tmp


def sequence_encoder(uid, clazz_filter):
  serial = csv.reader(open("../cache/methods_id.csv"))
  serial_T = list(map(list, zip(*serial)))
  serial = list(map(list, zip(*serial_T)))
  all_methods_count = len(serial_T[0])

  def get_index(lst=None, item=''):
    return [index for (index, value) in enumerate(lst) if value == item]

  tlist = runtime_filter(clazz_filter, 1, all_timestamp_sort(uid))
  all_count = len(tlist)
  tlist_T = list(map(list, zip(*tlist)))
  # print(tlist_T)
  #     end_index = get_index(tlist_T[1], 'onStop()V#End')
  start_index = get_index(tlist_T[1], START_METHOD)
  tlist_sequential = []
  for i in range(len(start_index) - 1):
    tlist_sequential.append(tlist[start_index[i]:start_index[i + 1]])
  tlist_sequential.append(tlist[start_index[-1]:])
  state_sequence = []
  state_time = []
  for t in tlist_sequential:
    tlist_sequential_T = list(map(list, zip(*t)))
    method_seq = []
    method_time = []
    for i in range(len(tlist_sequential_T[2]) - 1):
      method_time.append(
          round(((tlist_sequential_T[2][i + 1] - tlist_sequential_T[2][i]) / 1000000), 2))
    for c, m in zip(tlist_sequential_T[0], tlist_sequential_T[1]):
      method_seq.append(c + "." + m)
    method_seq_id = []
    for m in method_seq:
      if "#Start" in m:
        method_seq_id.append(int(serial[get_index(serial_T[0], m.split("#Start")[0])[0]][1]))
      else:
        method_seq_id.append(
            int(serial[get_index(serial_T[0], m.split("#End")[0])[0]][1]) + all_methods_count)
    # x_list.append(method_seq_id)
    # x = np.array(method_seq_id)
    method_seq_id += [-1]
    method_time += [0, 0]
    state_sequence += method_seq_id
    state_time += method_time
  # print(state_sequence)
  # print(state_time)
  return np.array(state_sequence), np.array(state_time), all_methods_count


def sequence_decoder(x_seq):
  serial = csv.reader(open("../cache/methods_id.csv"))
  serial_T = list(map(list, zip(*serial)))
  serial = list(map(list, zip(*serial_T)))
  all_methods_count = len(serial_T[0])
  seq_dec = []
  for func_no in x_seq:
    if func_no < all_methods_count:
      seq_dec.append(serial[func_no][0]+"#Start")
    else:
      seq_dec.append(serial[func_no - all_methods_count][0]+"#End")
  return seq_dec


def get_next(series, x_user):
  # The last state of user
  x = x_user[-1]
  # where are the next ones.
  # [ 268,  270,  272,  348,  350,  352,  426,  428,  430,  504,  506,
  #         508,  581,  584,  586,  660,  662,  664,  738,  740,  742,  816,
  #         818,  820,  894,  896,  898,  972,  974,  976, 1050, 1052, 1054,
  #        1128, 1130, 1132, 1206, 1208, 1210, 1283, 1286, 1288]
  indices = [i + 1 for i in np.where(series == x)[0].tolist()]
  # calculate set
  total = []
  for i in indices:
    total.append(series[i])
  series_set = list(set(total))
  print(series_set)
  return series_set


def sequence_set(series):
  pass
  # return X, label


class Model():
  def __init__(self, n_input, n_features):
    self.n_input = n_input
    self.n_features = n_features

  def loss_func(self, y_true, y_pred):
    y_index = tf.squeeze(tf.argmax(y_true, axis=1))
    # K.print_tensor(y_index, message='y_index = ')
    y_value = tf.gather(tf.squeeze(y_pred), y_index)
    # K.print_tensor(y_value, message='y_value = ')
    return abs(1 - y_value)

  def lstm_net(self):
    model = Sequential()
    # model.add(Embedding(batch_size=1, input_length=self.n_input))
    # model.add(LSTM(128, dropout=0.2, recurrent_dropout=0.2))
    model.add(LSTM(128,
                   activation='tanh',
                   recurrent_activation="hard_sigmoid",
                   use_bias=True,
                   kernel_initializer="glorot_uniform",
                   recurrent_initializer="orthogonal",
                   bias_initializer="zeros",
                   unit_forget_bias=True,
                   input_shape=(self.n_input, self.n_features)))
    model.add(Dense(self.n_features, activation='softmax'))
    return model

  def temporal_net(self):
    model = Sequential()
    # model.add(Embedding(batch_size=1, input_length=self.n_input))
    # model.add(LSTM(128, dropout=0.2, recurrent_dropout=0.2))
    model.add(LSTM(128, activation='tanh', input_shape=(self.n_input, self.n_features)))
    model.add(Dense(1))
    return model

  def gnn_net(self, n_input, n_features):
    pass


def train(series, n_input, n_method):
  # define dataset
  # series = array([50, 23, 43, 534, 1313, 4, 14, 2040, 4, 14, 2040, 43, 534, 23, 43, 534])
  # reshape to [10, 1]

  # The whole series set
  # series_set = np.unique(series).tolist()

  # define generator
  # n_input = len(x_user)
  # one hot
  # num_classes needs to be unified
  series_onehot = to_categorical(series[:59566], num_classes=n_method * 2)
  # x_onehot = to_categorical(x_user, num_classes=n_method * 2)
  # The markov set
  # series_set = get_next(series, x_user)
  # output class
  n_features = n_method * 2
  # n_features = 1
  # input data
  series_onehot = series_onehot.reshape((len(series_onehot), n_features))
  print(series_onehot.shape)
  # series = series.reshape((len(series), -1))
  # print(len(series))
  # Generator Shape [(series_length - length)/batch, 2, batch size, length, onehot]
  generator = TimeseriesGenerator(series_onehot, series_onehot, length=n_input, batch_size=128)
  # test
  # x = generator[0][0]
  # for i in x:
  #     print(np.argmax(i, axis=1))
  # y = np.argmax(generator[0][1], axis=1)
  # print(y)

  # define model
  meta_model = Model(n_input, n_features)

  # sequenctial model
  model = meta_model.lstm_net()
  # model = multi_gpu_model(model, 2)
  print(model.summary())
  # optimizer
  model.compile(optimizer='adam', loss='cosine_similarity', metrics=['accuracy'])
  # fit model
  # model.fit(X, y, nb_epoch=500, batch_size=1, verbose=2)
  model.fit_generator(generator, epochs=10, verbose=1)
  # save model
  model.save("LSTM_v2")


def train_temp(series, time, n_input, n_method):
  series_onehot = to_categorical(series, num_classes=n_method * 2)
  n_features = n_method * 2
  series_onehot = series_onehot.reshape((len(series_onehot), n_features))
  y_label = time.reshape((len(series_onehot), 1))[n_input - 1: -1]
  x_input = []
  for idx in range(len(series_onehot) - n_input):
    x_input.append(list(series_onehot[idx:idx + n_input]))
  x_input = np.array(x_input)
  meta_model = Model(n_input, n_features)
  # sequenctial model
  model = meta_model.temporal_net()
  # model = multi_gpu_model(model, 2)
  # use gpus
  print(model.summary())
  model.compile(optimizer='adam', loss='huber', metrics=['mean_squared_logarithmic_error'])
  model.fit(x_input, y_label, epochs=10, batch_size=128, verbose=1)
  model.save("LSTM_time")


def predict(n_input, n_features, model, x_input_raw):
  # print("y_label: " + str(y_label))
  x_onehot = to_categorical(x_input_raw, num_classes=n_features)
  # make a one step prediction out of sample
  x_input = np.array(x_onehot).reshape((1, n_input, n_features))
  # raw prediction index
  yhat = model.predict(x_input, verbose=0)
  y_index = np.argmax(yhat, axis=1)
  y_value = np.squeeze(y_index)
  return yhat, y_value


def test(model_path, model_path_tmp, series, time, n_input, n_method, test_num, pred_step):
  print("len(series): " + str(len(series)))
  model = keras.models.load_model(model_path)
  # print(model.summary())
  model_tmp = keras.models.load_model(model_path_tmp)
  # print(model_tmp.summary())
  # n_input = len(x_user)
  flag = True
  n_features = n_method * 2
  n_acc = 0
  s_prob = 0
  t_msle = 0
  for i in range(test_num):
    # sequential
    # input test data
    idx = random.randint(59566, len(series) - n_input - 1)
    # x and y
    x_input_raw = series[idx: idx + n_input]
    y_label = series[idx + n_input + pred_step - 1]
    if pred_step == 1:
      yhat, y_value = predict(n_input, n_features, model, x_input_raw)
      s_prob += yhat[0][y_label]
      if y_label == y_value:
        n_acc += 1
    else:
      y_value = 0
      for j in range(pred_step):
        yhat, y_value = predict(n_input, n_features, model, x_input_raw)
        if j == pred_step - 1:
          break
        x_input_raw = np.delete(x_input_raw, 0)
        x_input_raw = np.append(x_input_raw, y_value)
      s_prob += yhat[0][y_label]
      if y_label == y_value:
        n_acc += 1

    # Temporal
    x_input_tmp = series[idx: idx + n_input]
    y_label_tmp = time[idx + n_input - 1]
    # print("y_label: " + str(y_label))
    x_onehot = to_categorical(x_input_tmp, num_classes=n_features)
    # make a one step prediction out of sample
    x_input_tmp = np.array(x_onehot).reshape((1, n_input, n_features))
    # raw prediction index
    yhat_tmp = model_tmp.predict(x_input_tmp, verbose=0)
    y_value_tmp = np.squeeze(yhat_tmp)
    # TODO ReLu needs
    if y_value_tmp < 0:
      y_value_tmp = 0
    msle = mean_squared_log_error([[y_label_tmp]], [[y_value_tmp]])
    t_msle += msle

    # 显示
    y_pred_funcname = sequence_decoder([y_value])
    y_label_funcname = sequence_decoder([y_label])
    x_input_funcname = sequence_decoder(x_input_raw)
    if flag:
      print("_________________________example_________________________________")
      print("input sequence: " + str(x_input_funcname))
      print("time_pred: " + str(y_value_tmp) + " ms")
      print("sequence_pred: " + str(y_pred_funcname))
      print("time_label: " + str(y_label_tmp) + " ms")
      print("sequence_label: " + str(y_label_funcname))
      print("mean_squared_log_error: " + str(msle))
      print("probability: " + str(yhat[0][y_value]))
      flag = False
  print("___________________________result_________________________________")
  print("Total accuracy: " + str(n_acc / test_num))
  print("Total MSLE: " + str(t_msle / test_num))
  print("Average probability: " + str(s_prob / test_num))


def get_accuracy(model_path, model_path_tmp, series, n_input, n_method, test_num, pred_step):
  model = keras.models.load_model(model_path)
  # print(model.summary())
  model_tmp = keras.models.load_model(model_path_tmp)
  # print(model_tmp.summary())
  # n_input = len(x_user)
  flag = True
  n_features = n_method * 2
  n_acc = 0
  s_prob = 0
  t_msle = 0
  for i in range(test_num):
    # sequential
    # input test data
    idx = random.randint(59566, len(series) - n_input - pred_step - 1)
    # x and y
    x_input_raw = series[idx: idx + n_input]
    y_label = series[idx + n_input + pred_step - 1]
    if pred_step == 1:
      yhat, y_value = predict(n_input, n_features, model, x_input_raw)
      s_prob += yhat[0][y_label]
      if y_label == y_value:
        n_acc += 1
    else:
      y_value = 0
      for j in range(pred_step):
        yhat, y_value = predict(n_input, n_features, model, x_input_raw)
        if j == pred_step - 1:
          break
        x_input_raw = np.delete(x_input_raw, 0)
        x_input_raw = np.append(x_input_raw, y_value)
      s_prob += yhat[0][y_label]
      if y_label == y_value:
        n_acc += 1
  print(n_acc / test_num)
  return n_acc / test_num


def LSTM_data(x_seq, n_method, test_num, pred_step):
  x_axis = np.arange(1, pred_step+1)
  y_axis = []
  for i in range(1, pred_step+1):
    y_axis.append(get_accuracy("LSTM_v2", "LSTM_time", x_seq, n_input=10,
                  n_method=n_method, test_num=test_num, pred_step=i))
  y_axis = np.array(y_axis)
  return x_axis, y_axis
  # plt.plot(x_axis, y_axis)
  # plt.show()


# if __name__ == '__main__':
x_seq, x_time, n_method = sequence_encoder("72BCEEAE58EE0C9CF812AD78295B2413", "androvid")
x_steps = 10
test_num = 10
# plot(x_seq, n_method, test_num)
# train(x_seq, x_steps, n_method)  # 1155
# train_temp(x_seq, x_time, x_steps, n_method)
# test("LSTM_v2", "LSTM_time", x_seq, x_time, x_steps, n_method, test_num,10)
# x = array([50, 12, 43, 534, 1313, 4, 14, 2040, 4, 14, 2040, 4, 14, 2040, 439, 534, 23, 64, 128, 1698])
# train(x, [23, 64, 128])
