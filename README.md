GDJson [![Build Status](https://travis-ci.org/goodow/GDJson.svg?branch=master)](https://travis-ci.org/goodow/GDJson)
=========
Minimalistic JSON library for Java/Android/iOS/GWT/J2ObjC

Visit [Google groups](https://groups.google.com/forum/#!forum/goodow-realtime) for discussions and announcements.

## Requirements

GDJson depends on the NSJSONSerialization class, which is included in recent Foundation.framework:

* [iOS 5.0 and later](https://developer.apple.com/library/ios/documentation/Foundation/Reference/NSJSONSerialization_Class/Reference/Reference.html)
* [OS X v10.7 and later](https://developer.apple.com/library/mac/documentation/Foundation/Reference/NSJSONSerialization_Class/Reference/Reference.html)

## Adding GDJson to your project

### CocoaPods

[CocoaPods](http://cocoapods.org) is the recommended way to add GDJson to your project.

1. Add a pod entry for GDJson to your Podfile `pod 'GDJson', '~> 0.5'`
2. Install the pod(s) by running `pod install`.
3. Include GDJson wherever you need it with `#import "GDJson.h"`.
