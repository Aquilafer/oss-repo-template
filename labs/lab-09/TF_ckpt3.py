from __future__ import absolute_import, division, print_function, unicode_literals

# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras
import PIL

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

def curate(path, debug=False):
	raw_im = PIL.Image.open(path).convert('L')
	im = np.array(raw_im)
	
	#reshape to square (adds whitespace)
	dim = im.shape
	
	#add pixel border on edge if image shape has uneven pixel count
	if(dim[0] % 2 != 0):
		add = np.full((1, dim[1]), 255)
		im = np.concatenate((im, add), axis=0)
	if(dim[1] % 2 != 0):
		add = np.full((dim[0], 1), 255)
		im = np.concatenate((im, add), axis=1)
	
	dim = im.shape
	assert(dim[0] % 2 == 0 and dim[1] % 2 == 0)
	
	if(dim[0] > dim[1]): #height > width
		dif = int((dim[0] - dim[1])/2)
		add = np.full((dim[0], dif), 255)
		im = np.concatenate((add, im, add), axis=1)
	elif(dim[0] < dim[1]): #height < width
		dif = dim[1] - dim[0]
		add = np.full((dif, dim[1]), 255)
		im = np.concatenate((add, im, add), axis=0)
	dim = im.shape
	
	new_im = PIL.Image.fromarray(np.uint8(im))
	
	if(debug):
		print(dim)
		new_im.show()
	return np.array(new_im.resize((28, 28), PIL.Image.ANTIALIAS))
		
	
	
	

def plot_image(i, predictions_array, true_label, img):
  predictions_array, true_label, img = predictions_array[i], true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])
  
  plt.imshow(img, cmap=plt.cm.binary)
  
  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'
  
  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

def plot_value_array(i, predictions_array, true_label):
  predictions_array, true_label = predictions_array[i], true_label[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])
  thisplot = plt.bar(range(10), predictions_array, color="#777777")
  plt.ylim([0, 1])
  predicted_label = np.argmax(predictions_array)
  
  thisplot[predicted_label].set_color('red')
  thisplot[true_label].set_color('blue')

if __name__ == "__main__":
	fashion_mnist = keras.datasets.fashion_mnist

	(train_images, train_labels) = fashion_mnist.load_data()[0]

	class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
				   'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

	#rescale from (int)0-255 to (float)0-1
	train_images = train_images / 255.0

	model = keras.Sequential([
		keras.layers.Flatten(input_shape=(28, 28)),
		keras.layers.Dense(128, activation=tf.nn.relu),
		keras.layers.Dense(10, activation=tf.nn.softmax)
	])

	model.compile(optimizer='adam',
				  loss='sparse_categorical_crossentropy',
				  metrics=['accuracy'])

	model.fit(train_images, train_labels, epochs=6)
	
	im_paths = ["pants_1.jpg", "shirt_1.jpg", "sneaker_1.jpg", "sandal_1.jpg", "shirt_2.jpg", "boot_1.jpg"]
	im_labels = np.array([1, 0, 7, 5, 6, 9])
	full_im = np.array([1 - (curate(i) / 255.0) for i in im_paths])
	p_out = model.predict(full_im)
	
	test_loss, test_acc = model.evaluate(full_im, im_labels)

	print('Test accuracy:', test_acc)

	# Plot the first X test images, their predicted label, and the true label
	# Color correct predictions in blue, incorrect predictions in red
	num_rows = 2
	num_cols = 3
	num_images = num_rows*num_cols
	plt.figure(figsize=(2*2*num_cols, 2*num_rows))
	for i in range(num_images):
	  plt.subplot(num_rows, 2*num_cols, 2*i+1)
	  plot_image(i, p_out, im_labels, full_im)
	  plt.subplot(num_rows, 2*num_cols, 2*i+2)
	  plot_value_array(i, p_out, im_labels)
	plt.show()

