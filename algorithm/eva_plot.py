import matplotlib.pyplot as plt
import numpy as np

from STSP import x_seq, n_method, LSTM_data
from markov_model import markov_model, markov_data
from svm_model import svm_data

plt.rcParams['text.usetex'] = True

pred_step = 30
test_num = 1000

x_lstm, y_lstm= LSTM_data(x_seq, n_method, test_num, pred_step)
x_markov, y_markov = markov_data(markov_model, x_seq, test_num, pred_step)
x_svm, y_svm = svm_data(x_seq, test_num, pred_step)
# save the data
np.save('x_lstm.npy', x_lstm)
np.save('y_lstm.npy', y_lstm)
np.save('x_markov.npy', x_markov)
np.save('y_markov.npy', y_markov)
np.save('x_svm.npy', x_svm)
np.save('y_svm.npy', y_svm)

def comparison(y_lstm, y_markov, y_svm):
  x_axis = np.arange(1, pred_step+1)
  plt.plot(x_axis, y_lstm, color='red' ,label='LSTM')
  plt.plot(x_axis, y_markov, color='blue' ,label='Markov')
  plt.plot(x_axis, y_svm, color='green', label='SVM')
  plt.xlabel(r'Number of Prediction Step ($n$)')
  plt.ylabel(r'Accuracy')
  plt.legend()
  plt.show()

if __name__ == '__main__':
  comparison(y_svm, y_markov)