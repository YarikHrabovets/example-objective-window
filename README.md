# Example of creating window with Objective-C and CoCoa

It creates simple transparent window with image. If you wish to change image:

1. Replace `assets/owo-what.gif` with desired image
2. Change following line of code in `AppDelegate.m`
```diff objective-c
-  NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"owo-what" ofType:@"gif" inDirectory:@"assets"];
+  NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"your-file-name" ofType:@"your-file-type" inDirectory:@"assets"];
```
3. Finally run make
```sh
  make ./CocoaApp
```
