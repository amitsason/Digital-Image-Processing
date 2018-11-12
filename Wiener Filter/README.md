# Using Wiener Filter to filter out speckle noise #

Wiener filter uses the statistical characteristics of a given signal X and a given noise N.
when X and V are statistically independent (uncorrelated), the filter formula is given by:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/formula.JPG)


where Sx and Sv are the power spectral density functions (PSD) of X and N.

In the case of impulse respons (blurr) h(t) the filter can also be described as the inverse filter:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/formula2.JPG)

when the SNR (signal to noise ratio) is big i.e. the noise doesnt have large effect, our filter is the inverse filter 1/H(f)
when the SNR is small i.e. the noise have a large effect, our filtering is reduced to 0.


I used the rand() function to generate Uniformly distributed pseudorandom numbers,
which will act as our speckle noise, 

next I used wiener2() (wiener 2D) function with a 7X7 pixel size filter to filter out the noise.
wiener2 uses a pixel-wise adaptive Wiener method based on statistics estimated from a local neighborhood of each pixel.
*note when using a smaller filter (e.g. 5X5, 3X3) edges are preserved better but filtering effectivness is reduced

let us take amit.jpeg:

![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/amit%20noisy.jpg)

now let's apply Wiener filter to the image:

![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/amit%20filtered.jpg)

## Another example: ##
let us take homer.jpg:

![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/homer_noisy.jpg)

now let's apply Wiener filter to the image:

![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Wiener%20Filter/homer_filtered.jpg)








