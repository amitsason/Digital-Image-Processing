# Filtering in Frequency Domain #
## Adding noise in image domain and filtering it in frequency domain ##
In this section we will add a spatial sinusoidal noise across the whole image and then filter it out using fourier transform.
Let us take lenna.png:

Now let us add spatial sinusoidal noise:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/beforeNoisyFFT.JPG)


Let us look upclose at the fourier transform of the noisy image, we can see 3 distinct bright pixels-
2 for the noise frequencies and one in the middle which is the DC frequency:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/noiseInFreqDom.JPG)


If wee zoom in we can see the exact coordinates of the problematic pixels:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/firstFreqCoo.JPG)
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/secondFreqCoo.JPG)


Next we turn the white pixels (values above 0.9) in the above coordinates into black pixels (0 value).
* ![picture alt]()
* ![picture alt]()
* ![picture alt]()
