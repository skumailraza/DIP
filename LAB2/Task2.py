# Kumail Raza
# BESE 5A
# DIP Lab 2 
# Task 2 Python

from PIL import Image
img = Image.open('lab2-task3-image.jpg')
pixels = img.load() # create the pixel map

for i in range(img.size[0]): # for every pixel:
    for j in range(img.size[1]):
    	red = pixels[i,j][0]
    	green = pixels[i,j][1]
    	blue = pixels[i,j][2]

    	if red in range(100,255) and green in range(0,100) and blue in range(0,100):
        # if pixels[i,j] == (range(150,255), range(0,100), range(0,100)):
        	pixels[i,j] = (255, 255 ,0)

        if red in range(0,100) and green in range(0,100) and blue in range(150,255):
        # if pixels[i,j] == (range(150,255), range(0,100), range(0,100)):
        	pixels[i,j] = (255, 0 ,255)
        if red in range(0,50) and green in range(150,255) and blue in range(0,100):
        # if pixels[i,j] == (range(150,255), range(0,100), range(0,100)):
        	pixels[i,j] = (0, 255 ,255)
          
        

img.show()
        