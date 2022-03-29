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

### Guidelines

• No usage of third party code is allowed.
