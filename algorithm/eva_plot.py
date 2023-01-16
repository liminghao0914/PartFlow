import matplotlib.pyplot as plt
import numpy as np

from STSP import x_seq, n_method, LSTM_data
from markov_model import markov_model, markov_data
from svm_model import svm_data

plt.rcParams['text.usetex'] = True
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
  for i in range(2, batch):
    x_lstm, y_lstm = LSTM_data(x_seq, n_method, batch_test_num, pred_step)
    x_markov, y_markov = markov_data(markov_model, x_seq, batch_test_num, pred_step)
    x_svm, y_svm = svm_data(x_seq, batch_test_num, pred_step)
    # save the data
    np.save(TEST_RESULT_OUTPUT+'x_lstm_{i}.npy'.format(i=i), x_lstm)
    np.save(TEST_RESULT_OUTPUT+'y_lstm_{i}.npy'.format(i=i), y_lstm)
    np.save(TEST_RESULT_OUTPUT+'x_markov_{i}.npy'.format(i=i), x_markov)
    np.save(TEST_RESULT_OUTPUT+'y_markov_{i}.npy'.format(i=i), y_markov)
    np.save(TEST_RESULT_OUTPUT+'x_svm_{i}.npy'.format(i=i), x_svm)
    np.save(TEST_RESULT_OUTPUT+'y_svm_{i}.npy'.format(i=i), y_svm)
    print('Batch {i} finished'.format(i=i))


def comparison(y_lstm, y_markov, y_svm):
  x_axis = np.arange(1, pred_step+1)
  plt.plot(x_axis, y_lstm, color='red', label='LSTM')
  plt.plot(x_axis, y_markov, color='blue', label='Markov')
  plt.plot(x_axis, y_svm, color='green', label='SVM')
  plt.xlabel(r'Number of Prediction Step ($n$)')
  plt.ylabel(r'Accuracy')
  plt.legend()
  plt.show()


if __name__ == '__main__':
  pred_step = 20
  test_num = 1000
  test(test_num, pred_step)
  # comparison(y_lstm,y_svm, y_markov)
