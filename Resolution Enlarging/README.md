# Resolution Enlarging #
----
In this section we will enlarge the resolution of a given image.
the image does not have to be rectangular, for example a = 3x3:
after enlarging by 2 : a = 6x6 after enlarging by 3: a = 9x9.
we see that if we enlarge a 3x3 matrix by 3 to a 9x9 matrix it will look like this:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Resolution%20Enlarging/images/3x3_9x9.JPG)

we didnt add new information to the image, only multyply pixel number by k^2 (k is the enlarging factor in the last case 3).

lets take **homer.jpg** and the case when k = 4.
we enlarged the image by 4 and from 201x251 resolution we got 804x1004 resolution.
here is the original image on the ledt and enlarged image on the right:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Resolution%20Enlarging/images/original%26enlarged.JPG)

now we can see that our new enlarge image is very grainy we want to smoothened the image.
I used a gaussian filter to try and preserve as much as i can the edges.
in the code there is also an option to use low pass filter but the edges are less sharp.
here is the image after filtration (smoothing) on the left and original enlarged on the right:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Resolution%20Enlarging/images/enlargedVSsmooth.JPG)

we can clearly see that the smoothed image is much less grainy but also less contrast. the effect of the filtration can be seen much clearly when we soom in on the images:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Resolution%20Enlarging/images/enlargeVSsmoothZoom.JPG)

now after filtration, we added new information to the image and we can see that by looking at the images histograms:

* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Resolution%20Enlarging/images/histograms.JPG)

we see that the filtering affected mostly the black zone of the histogram.

----
# Conclusions #
* by enlarging an image we dont add new data.
* enlarging an image causes it to look more grainy.
* filtering enlarged image damage the contrast and adds new information to the image.








