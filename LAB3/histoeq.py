# Kumail Raza 112120
# BESE 5
# DIP LAB3
# Histogram

from PIL import Image
import numpy as np
import cv2
import matplotlib.mlab as mlab  
import matplotlib.pyplot as plt
from hist import * 


def gs(img):
     l = []
     for x in img:
         for y in x:
             j = 0.299*y[0] + 0.587*y[1] + 0.114*y[2]
             l.append(np.array([j,j,j]))
             
          
     return l

def histogram_org():
	img = Image.open("testimage.png")
	img = img.convert('L')
	img = np.array(img)
	print img.shape
	n, bins, patches = plt.hist(img, facecolor='red')


	plt.xlabel('pixel')
	plt.ylabel('intensity')
	plt.title(r'Histogram')
	plt.axis([0, 300, 0, 255])
	plt.grid(True)

	plt.show()

def eqhistogram():
        img = Image.open("testimage.png")
	img = img.convert('L')
	img = np.array(img)
	new_img, h, new_h, sk = histeq(img)
	n, bins, patches = plt.hist(new_img, facecolor='blue')


	plt.xlabel('pixel')
	plt.ylabel('intensity')
	plt.title(r'Histogram')
	plt.axis([0, 300, 0, 255])
	plt.grid(True)
	plt.show()


histogram_org()
eqhistogram()

