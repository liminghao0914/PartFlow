from sklearn.svm import SVC
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
import numpy as np
import joblib
from sklearn.metrics import accuracy_score
from random import randint

from STSP import x_seq, n_method, x_steps, to_categorical

def train():
  # Load the iris dataset
  # iris = load_iris()
  # X, y = iris.data, iris.target
  n_features = n_method * 2

  # series_onehot = to_categorical(x_seq[:600], num_classes=n_features)
  # series_onehot = series_onehot.reshape((len(series_onehot), n_features))
  series_onehot = x_seq[:30000]
  # print(series_onehot.shape)
  # generate X and y
  X = []
  y = series_onehot[-len(series_onehot)+x_steps:]
  for i in range(len(series_onehot)-x_steps):
    X.append(series_onehot[i:i+x_steps])
  X = np.array(X)
  print(X.shape, y.shape)

  # Split the dataset into train and test sets
  X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)
  print(X_train.shape, X_test.shape, y_train.shape, y_test.shape)

  # Create an SVM model with a linear kernel
  # svm = SVC(kernel='linear')
  svm = SVC(kernel='rbf', C=10000, gamma=1, tol=1e-3, max_iter=10000, decision_function_shape='ovr')

  # Create a logistic regression model
  # clf = LogisticRegression(random_state=42, solver='lbfgs', multi_class='auto')

  # Train the model on the training data
  svm.fit(X_train, y_train)

  # # Train the model on the training data
  # clf.fit(X_train, y_train)

  # Test the model on the test data
  y_pred = svm.predict(X_test)
  
  accuracy = accuracy_score(y_pred, y_test)
  print(f'Test accuracy: {accuracy:.2f}')

  # # Test the model on the test data
  # y_pred = clf.predict(X_test)

  # print(y_pred[0], y_test[0], X_test[0], X_test[1])
  # # Evaluate the model's performance
  # from sklearn.metrics import accuracy_score
  # print("Accuracy:", accuracy_score(y_test, y_pred))

  # Save the model to a file
  joblib.dump(svm, 'svm.joblib')

def get_xy(series, n_input, pred_step):
  idx = randint(59566, len(series) - n_input - pred_step - 1)
  x_input_raw = series[idx:idx + n_input]
  y_label = series[idx + n_input + pred_step - 1]
  return x_input_raw, y_label

def get_accuracy(svm_model, x_seq, test_num, pred_step):
  n_acc = 0
  for i in range(test_num):
    x_input_raw, y_label = get_xy(x_seq, x_steps, pred_step)
    if pred_step==1:
      y_pred = svm_model.predict(x_input_raw.reshape(1, -1))
      if y_label == y_pred[0]:
        n_acc += 1
    else:
      for j in range(pred_step):
        y_pred = svm_model.predict(x_input_raw.reshape(1, -1))
        x_input_raw = np.delete(x_input_raw, 0)
        x_input_raw = np.append(x_input_raw, y_pred)
      # print('y_pred: ', y_pred, 'y_label: ', y_label, 'x_input_raw: ' ,x_input_raw)
      if y_label == y_pred:
        n_acc += 1
  print('svm_Accuracy: ', n_acc / test_num)
  return n_acc / test_num

def svm_data(x_seq, test_num, pred_step):
  svm = joblib.load('svm.joblib')
  x_axis = np.arange(1, pred_step+1)
  y_axis = []
  for i in range(1, pred_step+1):
    y_axis.append(get_accuracy(svm, x_seq, test_num, i))
  y_axis = np.array(y_axis)
  return x_axis, y_axis