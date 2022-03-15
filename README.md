# smartflore

SmartFlore Flutter Mobile App: Learn about the plants that surround you and explore botanical trails.

## Run the app

###  Run on device
ios : `flutter run ios --release`
Android : `flutter run android --release`

Test in local on android (with release package)

### Build Release Bundle
`flutter build appbundle` 

### Build Apks from bundle
`bundletool build-apks --bundle=./build/app/outputs/bundle/release/app-release.aab --output=./build/app/outputs/bundle/release/app-release.apks`

### Install APK on device
`bundletool install-apks --apks=./build/app/outputs/bundle/release/app-release.apks`

## Publish on stores
See the following [doc](doc/store.md)
