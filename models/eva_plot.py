import os
from matplotlib.ticker import MaxNLocator
import matplotlib.pyplot as plt
import numpy as np

from models.LSTM import x_seq, n_method, LSTM_data
from markov_model import markov_model, markov_data
from svm_model import svm_data
from nb_model import nb_data
from log_model import log_data

# plt.rcParams['text.usetex'] = True

TEST_RESULT_OUTPUT = './test_result_output/'

def test(test_num, pred_step):
  if test_num > 50:
    batch_test_num = 50
    batch = test_num // 50
  else:
    batch = 1
    batch_test_num = test_num
  print('batch_test_num: {batch_test_num}, total_batch: {batch}'.format(
      batch_test_num=batch_test_num, batch=batch))
  for i in range(13, batch):
    x_lstm, y_lstm = LSTM_data(x_seq, n_method, batch_test_num, pred_step)
    x_markov, y_markov = markov_data(markov_model, x_seq, batch_test_num, pred_step)
    x_svm, y_svm = svm_data(x_seq, batch_test_num, pred_step)
    # save the data
    np.save(TEST_RESULT_OUTPUT+'y_lstm_{i}.npy'.format(i=i), y_lstm)
    np.save(TEST_RESULT_OUTPUT+'y_markov_{i}.npy'.format(i=i), y_markov)
    np.save(TEST_RESULT_OUTPUT+'y_svm_{i}.npy'.format(i=i), y_svm)
    print('Batch {i} finished'.format(i=i))

def test2(test_num, pred_step):
  if test_num > 50:
    batch_test_num = 50
    batch = test_num // 50
  else:
    batch = 1
    batch_test_num = test_num
  print('batch_test_num: {batch_test_num}, total_batch: {batch}'.format(
      batch_test_num=batch_test_num, batch=batch))
  for i in range(17, batch):
    x_nb, y_nb = nb_data(x_seq, batch_test_num, pred_step)
    x_log, y_log = log_data(x_seq, batch_test_num, pred_step)
    # save the data
    np.save(TEST_RESULT_OUTPUT+'y_nb_{i}.npy'.format(i=i), y_nb)
    np.save(TEST_RESULT_OUTPUT+'y_log_{i}.npy'.format(i=i), y_log)
    print('Batch {i} finished'.format(i=i))

def comparison(y_lstm, y_markov, y_svm, y_nb, y_log):
  x_axis = np.arange(1, pred_step+1)
  plt.plot(x_axis, y_lstm, color='red', marker='o', label='LSTM')
  plt.plot(x_axis, y_markov, color='blue', marker='P', label='MM')
  plt.plot(x_axis, y_svm, color='green', marker='^', label='SVM')
  plt.plot(x_axis, y_nb, color='orange', marker='s', label='NB')
  plt.plot(x_axis, y_log, color='purple', marker='D', label='LR')
  # plt.xlabel(r'Number of Prediction Step n ($n \leq 20$')
  plt.xlabel(r'Number of Prediction Step n')
  plt.ylabel(r'Accuracy')
  plt.legend()
  plt.gca().xaxis.set_major_locator(MaxNLocator(integer=True))
  plt.show()

def read_npz(file_name, dir_name):
  y = []
  # read all files in the dir
  for file in os.listdir(dir_name):
    if file_name in file and "y" in file:
      data = np.load(os.path.join(dir_name, file))
      y.append(data)
  y = np.array(y)
  # get average
  y = np.mean(y, axis=0)
  print(y)
  return y

if __name__ == '__main__':
  pred_step = 20
  test_num = 1000
  # test(test_num, pred_step)
  # test2(test_num, pred_step)
  y_lstm=read_npz('y_lstm', TEST_RESULT_OUTPUT)
  y_markov=read_npz('y_markov', TEST_RESULT_OUTPUT)
  y_svm=read_npz('y_svm', TEST_RESULT_OUTPUT)
  y_nb=read_npz('y_nb', TEST_RESULT_OUTPUT)
  y_log=read_npz('y_log', TEST_RESULT_OUTPUT)
  comparison(y_lstm,y_markov, y_svm, y_nb, y_log)
