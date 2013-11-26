AMDraggableBlurView
=================

[![Build Status](https://travis-ci.org/andreamazz/AMDraggableBlurView.png)](https://travis-ci.org/andreamazz/AMDraggableBlurView)

Draggable blurred view.
This control is inspired by the brilliant work of César Pinto Castillo's: [AMBlurView](https://github.com/andreamazz/iOS-blur)

Screenshot
--------------------
![AMDraggableBlurView](http://www.eflatgames.com/github/AMDraggableBlurView.gif)

Setup with Cocoapods
--------------------
* Add ```pod 'AMDraggableBlurView'``` to your Podfile
* Run ```pod install```
* Run ```open App.xcworkspace```
* Add ```AMDraggableBlurView```s to your storyboard or in your code.

Setup without Cocoapods
--------------------
* Clone this repo
* Add the ```AMDraggableBlurView``` folder to your project
* Import ```AMDraggableBlurView.h``` in your controller's header file
* Add ```AMDraggableBlurView```s to your storyboard or in your code.
* Start using Cocoapods ;)

Create a blurred view
--------------------
Add a UIView in your storyboard or xib, then change it's main class to ```AMDraggableBlurView``` in the object insepctor.
Or you can just create the view in your code:
```objc
AMDraggableBlurView* view = [[AMDraggableBlurView alloc] initWithFrame:yourFrame];
```

Enable the draggable state
--------------------
To enable or disable the draggable just call this method:
```objc
[self.draggableView setDraggable:YES];
```

Changelog 
==================

0.1
--------------------
- Initial Version.

TODO
--------------------
* Needs testing
* Better documentation

MIT License
--------------------
	The MIT License (MIT)

	Copyright (c) 2013 Andrea Mazzini

	Permission is hereby granted, free of charge, to any person obtaining a copy of
	this software and associated documentation files (the "Software"), to deal in
	the Software without restriction, including without limitation the rights to
	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
	the Software, and to permit persons to whom the Software is furnished to do so,
	subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
