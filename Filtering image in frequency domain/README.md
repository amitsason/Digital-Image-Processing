# Filtering in Frequency Domain #
## Adding noise in image domain and filtering it in frequency domain ##
- - - - 

In this section we will add a spatial sinusoidal noise across the whole image and then filter it out using fourier transform.


Let us add spatial sinusoidal noise to lenna.png:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/beforeNoisyFFT.JPG)


Let us look up close at the fourier transform of the noisy image, we can see 3 distinct bright pixels:
* Two for the noise frequencies f1 and f2.
* One in the middle which is the DC frequency.
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/noiseInFreqDom.JPG)


If we zoom in we can see the exact coordinates of the problematic pixels:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/firstFreqCoo.JPG)
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/secondFreqCoo.JPG)


Next we turn the white pixels (values above 0.9) in the above coordinates into black pixels (0 value).
That will neutralize the the disrupting frequencies effect on the image.
Than we do a reverse fourier transform on the image and we get:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/afterFTT.JPG)
We have filtered and reconstructed the image almost perfectly, but because data was lost in the filtering process, the reconstructed image is slightly different from the original image. we can make the difference tangible by subtracting the filtered image from the original image and show the values as an image:
* ![picture alt](https://github.com/amitsason/Digital-Image-Processing/blob/master/Filtering%20image%20in%20frequency%20domain/lostData.JPG)
* Dark Regions - big data loss
* Light Regions - little data loss

let us define image frequency as the rate of change in pixels values in x and y directions.
on the one hand, we can see that we lost a lot of data in regions of low frequency (homogeneous regions) because they are dark and that impliesof a big difference between the original and restored image.
on the other hand regions with high frequecies like the hat's furr were barely damaged and appear white because there is no big difference between original and restored image.
# Conclusions #
Filtering noise in frequency domain can be very useful for specific peridic frequencies.
The filtering process was very simple and the image contrast was ever so slighly damaged.

* ![picture alt]()
