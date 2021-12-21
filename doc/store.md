# Publishing on Stores

## ANDROID & iOS 🤖🍎

#### 1. Set the right environement
Before packaging and publishing to the stores, make sure you're pointing the production server.

To do so, open `lib/main.dart`, and edit the following lines this way
```java
  String baseUrl = "****";
  // String baseUrl = "***";
```

#### 2. Update the version number

Upgrade the verson number in `pubspec.yaml`, to learn more about version number and semantic, see this [description](https://dart.dev/tools/pub/pubspec#version)
```
version: 1.0.1+1
```
The first n.n.n is the version name, update it the way you want, the second part is the version code, you need to increment it by one which could lead to something like: 
```
version: 1.1.0+7
```



## ANDROID 🤖
The complete proceess can be found [here](https://flutter.dev/docs/deployment/android)

If all the configuration is already done, you just need to run: 
```
flutter build appbundle
```
and then upload the bundle in the track of your choice on the [Google Play Console](https://play.google.com/console/u/0/developers/7184455577470808745/app/4974536163231566465/tracks/)


#### 🚀 Releasing on Internal Testing Track 🚀
This Channel is used to release the app to selected users only (based on emails).
It's better to releasee first on this track, to let trusted people test new feature and give you some feedbacks before releasing it public. 



## iOS 🍎
The complete proceess can be found [here](https://flutter.dev/docs/deployment/ios)

Build the xcode project running:
`flutter build ios`

Then open `ios/Runner.xcworkspace`

Goto `Product > Archive` in order to create the archive

Click the `Validate App button`. If any issues are reported, address them and produce another build. You can reuse the same build ID until you upload an archive.

After the archive has been successfully validated, click `Distribute App`

#### 🚀 Releasing on TestFlight 🚀
 
 Follow [those instructions](https://flutter.dev/docs/deployment/ios#release-your-app-on-testflight) and you'll be ready to publish the app on TestFlight.