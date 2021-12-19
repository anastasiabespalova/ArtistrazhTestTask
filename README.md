# Artistrazh Test Task
## Rotate function description
Given an array, rotate the array to the right by k steps, where k is non-negative. 5 solutions. Last one is made with O(1) extra space.

## CatPhotos app description
Shows cat photos in scroll view. At the first tap scales an image and shows "Zoom" button. At the second tap redirects to zoomed image page. 

- SwiftUI/MVVM

## ToDo
Animation when zooming an image doesn't work properly. Tried the following possible solutions both on the image an VStack (image + zoom button).

- .scaleEffect (.scaleEffect seems to perform a visual transform on the view without actually affecting its frame, so the ScrollView doesn't know to accommodate the bigger size. So I decided to change .frame)
- .animation, .withAnimation (Don't animate .frame change)



## Screenshots
<p float="left">
    <img src="https://github.com/anastasiabespalova/ArtistrazhTestTask/blob/main/CatsPhotos/Screenshots/1.png" width=250>
    <img src="https://github.com/anastasiabespalova/ArtistrazhTestTask/blob/main/CatsPhotos/Screenshots/2.png" width=250>
        <img src="https://github.com/anastasiabespalova/ArtistrazhTestTask/blob/main/CatsPhotos/Screenshots/3.png" width=250>
</p>

