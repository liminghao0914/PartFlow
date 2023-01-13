import numpy as np
from random import randint
from scipy import sparse
import sys

from STSP import x_seq, test_num

def predict(x_input_raw):
  input = x_input_raw[-1]
  vector = markov_model[input]
  # select the max value
  return np.argmax(vector)
    
def get_xy(uid, series, n_input):
  idx = randint(59566, len(series) - n_input - 1)
  x_input_raw = series[idx:idx + n_input]
  y_label = series[idx + n_input]
  return x_input_raw, y_label

def get_accuracy(test_num, pred_step, uid, series, n_input):
  n_acc = 0
  for i in range(test_num):
    x_input_raw, y_label = get_xy(uid, series, n_input)
    if pred_step==1:
      y_pred = predict(x_input_raw)
      if y_label == y_pred:
        n_acc += 1
    else:
      for j in range(pred_step):
        y_pred = predict(x_input_raw)
        np.delete(x_input_raw, 0)
        np.append(x_input_raw, y_pred)
      if y_label == y_pred:
        n_acc += 1
  print('Accuracy: ', n_acc / test_num)

if __name__ == '__main__':
  uid = '72BCEEAE58EE0C9CF812AD78295B2413'
  n_input = 10
  # read markov npz
  markov_model = sparse.load_npz(uid + '_markov.npz').todense()
  get_accuracy(test_num, 20, uid, x_seq, n_input)
