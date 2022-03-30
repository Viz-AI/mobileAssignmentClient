# Viz iOS Assignment

## Description
In this assignment, you will implement a simple CT scan viewer. A CT scan is a series of images resulting from an x-ray scan, in this case, a head.
For this purpose, a skeleton project is set up, with one view, the CT scan viewer.
Your task is to get the CT scan data from the api, prepare the data, and display it as seen in the below video.

https://user-images.githubusercontent.com/54849229/160552964-3dfc52ce-e195-411e-8012-e2455f33cf7d.mov

### API

A basic api for fetching the scan data (series) is online at https://viz-assignment.herokuapp.com/</br>
The api description is as follows:

url: https://viz-assignment.herokuapp.com/

#### Getting the series data
path: `series` (https://viz-assignment.herokuapp.com/series)</br>
result: a json of the form
```
{
  id: String - the series id
  slices: [String] - an array of slice image names, e.g ["0", "1", "2"]
}
```
#### Getting a single slice image
To get a slice image, you should construct a url as follows:</br>
path: `series/[series id]/slice/[slice image name]`</br>
for example, if for the series data you got id = `1234`, and the slices array had the slice `"10"`, to get the actual image data for that slice, load `https://viz-assignment.herokuapp.com/series/1234/slice/10`

#### Implementation
##### Swift
To get you up to speed, a basic interface view controller is already set up with a UISlider and a UIImageView.</br>
use that view controller for displaying the results.</br>
you are free to extend or change it as you wish.
##### SwiftUI
A SwiftUI skeleton project is also available. SeriesView is set up with an image and a slider as well.

### Guidelines
• The images must be presented and corrospond (when moving the slider) to the order in which they appear in the series result.</br>
• Usage of third party code is allowed (packages, pods etc).</br>
• Select Swift + UIKit or SwiftUI for your implementation.</br>
• Although this is a "single view" task, you should design the execution properly. Think about architecture, networking, modeling, efficiency, error handling and stability. Feel free to change the project as you will, as long as you display the viewer with the required functionality.</br>
• You have an hour and a half to complete the task.
#### Bonus points
• Setting up a caching mechanism for the photos (you are not required to cache the images by default. They can persist in memory as well). However, if you use a third party library for downloading the photos that also caches them, no bonus points will count for that.</br>
• Show a loading indicator until all images are ready.

### Submission
When done, compress the xcode project and send it by mail.
