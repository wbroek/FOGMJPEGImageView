FOGMJPEGImageView
=================

FOGMJPEGImageView is a UIImageView subclass dedicated to displaying a MJPEG from a remote feed.

A typical use case for FOGMJPEGImageView would be displaying a live webcam feed.


Installation with CocoaPods
============

[CocoaPods](https://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like AFNetworking in your projects. See the ["Getting Started" guide for more information](https://github.com/AFNetworking/AFNetworking/wiki/Getting-Started-with-AFNetworking).

#### Podfile

```ruby
pod "FOGMJPEGImageView", :git => 'https://github.com/wbroek/FOGMJPEGImageView.git'
```

Manual Installation
============

Copy the contents of the FOGMJPEGImageView directory into your project:

- FOGJPEGImageMarker.h
- FOGJPEGImageMarker.m
- FOGMJPEGDataReader.h
- FOGMJPEGDataReader.m
- FOGMJPEGImageView.h
- FOGMJPEGImageView.m
- FOGMJPEGImageViewDelegate.h

Usage
=====

With an instantiated FOGMJPEGImageView simply call `startWithURL:` passing the URL of the MJPEG feed you wish to display or use `startWithNSURLRequest:` with the whole request to the MJPEG feed

```objective-c
FOGMJPEGImageView *mjpegImageView;
...
[mjpegImageView startWithURL:[NSURL URLWithString:@"http://192.168.0.1/mjpg/video.mjpg?camera=1"]];
```

You may halt the MJPEG feed by calling `stop`.

```objective-c
[mjpegImageView stop];
```

If you want to get informed about certain event you can make your class conform to the FOGMJPEGImageViewDelegate
```objective-c
@interface MyClass () <FOGMJPEGImageViewDelegate>
```

Set your class as the delegate of the FOGMJPEGImageView
```objective-c
    mjpegImageView.delegate = self;
```

And implement some or all of the given delegate methods from the protocol
```objective-c
- (void)FOGMJPEGImageViewDidReceiveImage:(FOGMJPEGImageView *)mjpegImageView
{
    // Handle success.
}

- (void)FOGMJPEGImageView:(FOGMJPEGImageView *)mjpegImageView loadingImgaeDidFailWithError:(NSError *)error
{
    // Handle error.
}

```

Maintainers
=======

This FOGMJPEGImageView fork is mainted by [Wouter vab den Broek](https://github.com/wbroek) ([@wbroek](https://twitter.com/wbroek))

License
=======

FOGMJPEGImageView is available under the MIT license. See the LICENSE file for more info.
