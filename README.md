AFViewShaker
=======

## About
AFViewShaker is simple as a brick utility for UIView shake animation.

![](example.gif)

## Using
##### Create shaker for one view
```objective-c
AFViewShaker * viewShaker = [[AFViewShaker alloc] initWithView:self.formView];
```

##### Create shaker for multiple views
```objective-c
NSArray * allFields = @[self.emailField, self.passwordField];
AFViewShaker * viewShaker = [[AFViewShaker alloc] initWithViewsArray:allFields];
```

##### Shake with default parameters
```objective-c
[self.viewShaker shake];
```

##### Shake with additional parameters
```objective-c
[self.viewShaker shakeWithDuration:0.6 completion:^{
    NSLog(@"Hello World!");
}];
```

## Installation with CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like AFViewShaker in your projects.  

##### Podfile
```ruby
pod "AFViewShaker", "~> 0.0.2"
```

## For Xamarin users
If you are using [Xamarin.iOS](https://xamarin.com), check out [this](https://github.com/robert-waggott/Xamarin.ViewShaker) port by [Robert Waggott](https://github.com/robert-waggott).
