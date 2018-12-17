
# Down Sample Filtering #
----
In this project we want to reduce an image resolution by a factor of an integer k.

----
for the purpose of this i built a matlab function called myDownSampling.m and a matlab file that runs the function called runMyreducingResolution.m. make sure you have these two matlab files and the image 'homer.jpg' in your matlab directory.

* *myDownSampling(I, k)* - recieves a grayscale image I and down sample (take the minimal value) every kxk matrix in I and then take a k stride in each direction(up and down). the function returnes the downsampled image.
we can see the principle of down sampling in this scheme:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/scheme.JPG)

we try to create a new image that will preserve the valuable informaton of the original image and discard the rest thus creating a new image with lower resolution that preserved the important features of the original image. in our case the important information in the image is the black values of the grayscale image. so we downsample the minimal values.
in the scheme it is visable that down sampling by a factor of two discards 75% of the information of the image.

----
for this example we take homer.jpg as ower image.
the original image resolution is 201x251 pixels. 
## first we downsample by a factor of 2 (k = 2): ##

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalanddownk2.JPG)
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalvsdownk2.JPG)

----
## then we downsample by a factor of 3 (k = 3): ##

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalanddownk3.JPG)
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalvsdownk3.JPG)
----
## then we downsample by a factor of 4 (k = 4): ##

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalanddownk4.JPG)
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Down%20Sampling/images/originalvsdownk4.JPG)
----
we can clearly see that if we down sample


* ![picture alt]()
* ![picture alt]()
* ![picture alt]()
* ![picture alt]()


