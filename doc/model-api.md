# API 

## Servicies Endpoint:
[https://beta.tela-botanica.org/smartflore-services/](https://beta.tela-botanica.org/smartflore-services/)
  - `/trails` returns a list of trails (used on the map / trail list screen).  
  - `/trails?bbox=43.615928,3.8695606,43.61238340,3.873929119`returns a list of trails according to the given bounds.
  - `/trail` returns trail details. 

## App Models:
App models are built using [@freezed](https://pub.dev/packages/freezed). It simplify the syntax and the boilerplate you have to write in order to write your models. 
   1. Using [https://app.quicktype.io/](https://app.quicktype.io/) can save you some time. 
   2. Build Models with `@freezed` using: `flutter pub run build_runner watch --delete-conflicting-outputs` 