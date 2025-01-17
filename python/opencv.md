# OpenCV
{id: opencv}

## OpenCV Installation
{id: opencv-installation}

* Install both OpenCV for Python and the external contribution packages

```
pip install opencv-python
pip install opencv-contrib-python
```

## Download images
{id: opencv-download-images}

* Visit [Duck Duck Go](https://duckduckgo.com/).
* Search for "cats" (or whatever other animal you like) and click on "Images".
* Click on an image and then on the "View File" button.
* Right-click and "Save Image As".
* Make sure you remember in which folder you saved file.


## OpenCV Read image
{id: opencv-read-image}
{i: imread}
{i: imshow}
{i: waitKey}

![](examples/opencv/read_image.py)

* press any key to stop the display

## OpenCV - read image and fail
{id: opencv-read-image-fail}

* File does not exist
* File is not in the correct format.

```
cv2.error: OpenCV(4.5.3) /tmp/pip-req-build-agffqapq/opencv/modules/highgui/src/window.cpp:1006: error: (-215:Assertion failed) size.width>0 && size.height>0 in function 'imshow'
```

## OpenCV resize (rescale) images
{id: opencv-resize-image}
{i: shape}
{i: resize}
{i: INTER_AREA}

* To reduce the computation power needed to process the image (or video)

![](examples/opencv/resize_image.py)

* Works on images, videos, live videos

* Try to resiz the image to be larger than the original using either INTER_AREA or INTER_LINER or INTER_CUBIC.
* Cubic is slower but better quality


## OpenCV cropping image
{id: opencv-cropping-image}

![](examples/opencv/cropping_image.py)

## OpenCV crop, resize and save image
{id: opencv-crop-resize-save-image}
{i: imwrite}

![](examples/opencv/crop_resize_and_save_image.py)

## OpenCV - draw on new images
{id: opencv-draw-on-new-image}

![](examples/opencv/draw_on_new_image.py)

## OpenCV - draw rectangle
{id: opencv-draw-rectangle}
{i: rectangle}

![](examples/opencv/draw_rectangle.py)

## OpenCV - draw circle
{id: opencv-draw-circle}
{i: circle}

![](examples/opencv/draw_circle.py)


## OpenCV convert BGR to greyscale and back to BGR
{id: opencv-conevrt-image-to-greyscale}
{i: COLOR_BGR2GRAY}
{i: COLOR_GRAY2BGR}

* [Grayscale](https://en.wikipedia.org/wiki/Grayscale) is the distribution of pixel intensities.
* Converting from grey to BGR just replicates the same 2-dimensional matrix 3 times for Blue, Green, and Red

![](examples/opencv/convert_to_grayscale.py)


## OpenCV blur image
{id: opencv-blur-image}
{i: blur}

* Average the intensity of all the pixels in the kernel (window)
* Median - helps reduce the nois in the image
* [Gaussian blur](https://en.wikipedia.org/wiki/Gaussian_blur) - less blurring than the average blurring, but more natural

* Increasing the ksize (kernel size) and the image will be more blurred.

![](examples/opencv/blur_average.py)


## OpenCV Gaussian blur
{id: opencv-gaussian-blur}
{i: GaussianBlur}

![](examples/opencv/blur_gaussian.py)


## OpenCV Median blur
{id: opencv-median-blur}
{i: medianBlur}

* The kernel here is always square (for whatever reason) and thus we only pass a single number
* Usually used with small kernel sizes (less than 7)

![](examples/opencv/median_blur.py)


## OpenCV Bilateral blur
{id: opencv-bilateral-blur}
{i: bilateralFilter}

![](examples/opencv/bilateral_blur.py)


## OpenCV blur part of an image
{id: opencv-blur-part-of-an-image}

![](examples/opencv/blur_average_part.py)

```
python blur_average_part.py  ~/Dropbox/Data/img/yello-flower.jpeg 35 400 400 300
```

## OpenCV - Thresholding
{id: opencv-thresholding}
{i: thresholding}


* binarization of image - where pixels are either black or white
* eg. we pick a number and any pixel less than that number becomes black and any pixel with more than that number becomes white

## OpenCV - Simple Thresholding
{id: opencv-simple-thresholding}
{i: threshold}
{i: THRESH_BINARY}
{i: THRESH_BINARY_INV}

![](examples/opencv/simple_thresholding.py)

## OpenCV - Adaptive Thresholding
{id: opencv-adaptive-thresholding}
{i: adaptiveThreshold}
{i: ADAPTIVE_THRESH_MEAN_C}
{i: ADAPTIVE_THRESH_GAUSSIAN_C}

![](examples/opencv/adaptive_thresholding.py)

## OpenCV - Gradients and Edges
{id: opencv-gradients-and-edges}

* [Image Gradient](https://en.wikipedia.org/wiki/Image_gradient)
* [Edge detection](https://en.wikipedia.org/wiki/Edge_detection)
* Canny
* Laplacing
* Sobel

## OpenCV - finding edges using Canny
{id: opencv-finding-edges-using-canny}

![](examples/opencv/canny.py)

* If we first blur the image and then run Canny on the blurred image, we get a lot less edges.

Dilate an image using structuring elements


## OpenCV - Laplacian Gradients
{id: opencv-laplacian-gradients}
{i: Laplacian}

* [Laplace operator](https://en.wikipedia.org/wiki/Laplace_operator)

![](examples/opencv/laplacian_gradiants.py)

## OpenCV - Sobel Gradients
{id: opencv-sobel-gradients}
{i: Sobel}

* [Sobel operator](https://en.wikipedia.org/wiki/Sobel_operator)

![](examples/opencv/sobel_gradiants.py)



## OpenCV - Canny Dilate Erode
{id: opencv-canny-dilate-erode}
{i: canny}
{i: dilate}
{i: erode}

![](examples/opencv/canny_dilated_erode.py)

![](examples/opencv/cropping_image.py)


## OpenCV Move of an Image
{id: opencv-move-of-image}

* Shifting the image along the X or Y axes.

![](examples/opencv/move_image.py)

## OpenCV - Rotate Image
{id: opencv-rotate-image}

![](examples/opencv/rotate_image.py)

* Enlarge (add empy parts around it) before rotating.

## OpenCV - Flip Image
{id: opencv-flip-image}

![](examples/opencv/flip_image.py)

## OpenCV - Contours
{id: opencv-counturs}

* Similar, but not the same as edges
* [Contour line](https://en.wikipedia.org/wiki/Contour_line)

* First convert the image to grey-scale
* Then find the edges of the
* contours is a python list of the coordinates of the contour of the image
* hierarchies the hierarchical representation of the contours

![](examples/opencv/contour_image.py)

## OpenCV - Draw contours of an image on a blank image
{id: opencv-draw-contours}

![](examples/opencv/draw_contours.py)

## OpenCV - ColorSpaces
{id: opencv-colorspaces}

* [Color Spaces](https://en.wikipedia.org/wiki/Color_space)

* BGR
* RGB
* HSV Hue Saturation Value [HSV and HSL](https://en.wikipedia.org/wiki/HSL_and_HSV) (aka. HSB Hue Saturation Brightness)
* HSL Hue Saturation Lightness
* [LAB aka L*a*b aka CIELAB](https://en.wikipedia.org/wiki/CIELAB_color_space)
* GreyScale - distribution of pixel intensities
* Black and white images have two colors, black and white, [grayscale](https://en.wikipedia.org/wiki/Grayscale) images 
* [GrayScale](https://web.stanford.edu/class/cs101/image-6-grayscale-adva.html)


## OpenCV - BGR to RGB
{id: opencv-bgr-to-rgb}
{i: COLOR_BGR2RGB}
{i: COLOR_RGB2BGR}

![](examples/opencv/bgr_to_rgb.py)

## OpenCV - BGR to HSV
{id: opencv-bgr-to-hsv}
{i: COLOR_BGR2HSV}
{i: COLOR_HSV2BGR}

* The conversion is not loss-less.
* Better use images that are 16-bit than images that are 8-bit (as my camera takes them)
* Even with 16 bit there might be some changes as the conversions are floating point.

![](examples/opencv/bgr_to_hsv.py)

* Check the yello flower

## OpenCV - BGR to LAB
{id: opencv-bgr-to-lab}
{i: COLOR_BGR2LAB}
{i: COLOR_LAB2BGR}


![](examples/opencv/bgr_to_lab.py)


## OpenCV - Split and merge color channels
{id: opencv-split-and-merge-color-channels}
{i: split}
{i: merge}

* The Channels: R, G, B
* Creates 3 greyscale images (2D matrices)

![](examples/opencv/color_channels.py)

## OpenCV - bitwise operations
{id: opencv-bitwise-operations}
{i: bitwise_and}
{i: bitwise_or}
{i: bitwise_xor}
{i: bitwise_not}

![](examples/opencv/bitwise_operations.py)


## OpenCV - masking
{id: opencv-masking}

* Using bitwise AND on the same image using a mask parameter as well

![](examples/opencv/masking.py)

## OpenCV - grayscale historgrams
{id: opencv-grayscale-histograms}
{i: calcHist}

* Visualize the distribution of pixel intensities in a picture

![](examples/opencv/show_grayscale_histogram.py)

## OpenCV - color historgrams
{id: opencv-color-histograms}
{i: calcHist}

![](examples/opencv/show_color_histogram.py)


## OpenCV - Face detection
{id: opencv-face-detection}
{i: CascadeClassifier}
{i: detectMultiScale}

* Using a pretrained classifier provided by OpenCV
* Haarcascade
* Local binary pattern

* get the `haarcascade_frontalface_default.xml` XML file from [GitHub]) and save it locally

![](examples/opencv/face_detection.py)


## OpenCV - Face recognition
{id: opencv-face-recognition}

* To be finished!

![](examples/opencv/face_recognition.py)


## Jupyter notebook
{id: opencv-jupyter-notebook}

examples/opencv/image_representation.ipynb
examples/opencv/opencv.ipynb

## Download movies
{id: opencv-download-movies}

* Install pytube

```
pip install pytube
```

* Visit YouTube
* Search for "cameleon changing color"
* Take the URL of any video

```
pytube https://www.youtube.com/watch?v=hXMZ214pNZ4
```


## OpenCV Read video
{id: opencv-read-video}

![](examples/opencv/read_video.py)


* instead of filename or a number 0,1, 2 to capture video using camera

```
# v2.error: OpenCV(4.5.3) /tmp/pip-req-build-agffqapq/opencv/modules/highgui/src/window.cpp:1006:
#    error: (-215:Assertion failed) size.width>0 && size.height>0 in function 'imshow'

# This -215 means we ran out of the frames.
```

Only for Live video:
capture.set(3, width)
capture.set(4, height)

## OpenCV Resources
{id: opencv-resources}

* [OpenCV Course - Full Tutorial with Python](https://www.youtube.com/watch?v=oXlwWbU8l2o)

```
pip install caer      # just some extra package
```
