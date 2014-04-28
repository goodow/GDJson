GDJson [![Build Status](https://travis-ci.org/goodow/GDJson.svg?branch=master)](https://travis-ci.org/goodow/GDJson)
=========
Minimalistic JSON library for Java/Android/iOS/GWT/J2ObjC

## Requirements

GDJson depends on the NSJSONSerialization class, which is included in recent Foundation.framework:

* [iOS 5.0 and later](https://developer.apple.com/library/ios/documentation/Foundation/Reference/NSJSONSerialization_Class/Reference/Reference.html)
* [OS X v10.7 and later](https://developer.apple.com/library/mac/documentation/Foundation/Reference/NSJSONSerialization_Class/Reference/Reference.html)

## Adding GDJson to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add GDJson to your project.

1. Add these pods to your Podfile:
```ruby
pod 'J2ObjC', :git => 'https://github.com/goodow/j2objc.git'
pod 'GDJson', :git => 'https://github.com/goodow/GDJson.git'
```
2. Install the pod(s) by running `pod install`.
3. Include GDJson wherever you need it with `#import "GDJson.h"`.
