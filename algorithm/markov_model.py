import numpy as np
from random import randint
from scipy import sparse
import sys
import matplotlib.pyplot as plt

uid = '72BCEEAE58EE0C9CF812AD78295B2413'
n_input = 10
markov_model = sparse.load_npz(uid + '_markov.npz').todense()

def predict(markov_model, x_input_raw):
  input = x_input_raw[-1]
  vector = markov_model[input]
  # select the max value
  return np.argmax(vector)
    
def get_xy(series, n_input, pred_step):
  idx = randint(59566, len(series) - n_input - pred_step - 1)
  x_input_raw = series[idx:idx + n_input]
  y_label = series[idx + n_input + pred_step - 1]
  return x_input_raw, y_label

def get_accuracy(markov_model, test_num, pred_step, series, n_input):
  n_acc = 0
  for i in range(test_num):
    x_input_raw, y_label = get_xy(series, n_input, pred_step)
    # print('x_input_raw_ori: ', x_input_raw, 'y_label: ', y_label)
    if pred_step==1:
      y_pred = predict(markov_model, x_input_raw)
      if y_label == y_pred:
        n_acc += 1
    else:
      for j in range(pred_step):
        y_pred = predict(markov_model, x_input_raw)
        x_input_raw = np.delete(x_input_raw, 0)
        x_input_raw = np.append(x_input_raw, y_pred)
      # print('y_pred: ', y_pred, 'y_label: ', y_label, 'x_input_raw: ' ,x_input_raw)
      if y_label == y_pred:
        n_acc += 1
  print('markov_Accuracy: ', n_acc / test_num)
  return n_acc / test_num

def markov_data(markov_model, x_seq, test_num, pred_step):
  x_axis = np.arange(1, pred_step+1)
  y_axis = []
  for i in range(1, pred_step+1):
    y_axis.append(get_accuracy(markov_model, test_num, i, x_seq, n_input))
  y_axis = np.array(y_axis)
  return x_axis, y_axis
  # plt.plot(x_axis, y_axis)
  # plt.show()

# if __name__ == '__main__':

  # plot(uid, x_seq, n_input, pred_step=30)
  # get_accuracy(test_num, 15, uid, x_seq, n_input)
