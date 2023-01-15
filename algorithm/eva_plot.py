import matplotlib.pyplot as plt
import numpy as np

from STSP import x_seq, n_method, LSTM_data
from markov_model import markov_model, markov_data
from svm_model import svm_data

pred_step = 30
test_num = 1000

# x_lstm, y_lstm= LSTM_data(x_seq, n_method, test_num, pred_step)
# x_lstm, y_lstm= markov_data(markov_model, x_seq, test_num, pred_step)
x_markov, y_markov = markov_data(markov_model, x_seq, test_num, pred_step)
x_svm, y_svm = svm_data(x_seq, test_num, pred_step)

def comparison(y_lstm, y_markov):
  x_axis = np.arange(1, pred_step+1)
  plt.plot(x_axis, y_lstm, color='blue' ,label='LSTM')
  plt.plot(x_axis, y_markov, color='green', label='Markov')
  plt.xlabel('Prediction step')
  plt.ylabel('Accuracy')
  plt.legend()
  plt.show()

if __name__ == '__main__':
  comparison(y_svm, y_markov)