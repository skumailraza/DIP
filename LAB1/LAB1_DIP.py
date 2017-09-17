# KUMAIL RAZA
# BESE 5A
# 112120
# LAB1 DIP in Python

from skimage import io
from scipy import misc
import matplotlib.pyplot as plt
from skimage import data
from skimage.transform import rescale, resize, downscale_local_mean
import os


rgb_image = io.imread("image.png")

rgb_image.shape # gives (1411L, 1411L, 3L)

plt.figure(figsize=(4, 4))
plt.imshow(rgb_image)
plt.show()

# Green Image
green_image = rgb_image.copy() # Make a copy
green_image[:,:,0] = 0
green_image[:,:,2] = 0

plt.figure(figsize=(4, 4))
plt.imshow(green_image)
plt.show()

# Blue Image
blue_image = rgb_image.copy() # Make a copy
blue_image[:,:,0] = 0
blue_image[:,:,1] = 0

plt.figure(figsize=(4, 4))
plt.imshow(blue_image)
plt.show()

# Red Image
red_image = rgb_image.copy() # Make a copy
red_image[:,:,1] = 0
red_image[:,:,2] = 0

plt.figure(figsize=(4, 4))
plt.imshow(red_image)
plt.show()

# Resize
image_resized = resize(rgb_image, (400, 400), mode='reflect')
plt.imshow(image_resized)
plt.show()
misc.imsave('image_resized1.bmp',image_resized)

