# Cat-Breeds-App

A Flutter application that lists cat breeds and provides information about them.

## Description

This is a simple application that uses the service provided by [TheCatAPI](https://developers.thecatapi.com/) to get information about cat breeds and neatly displays said information in a mobile device.
The API provides abundant information about various breeds, some of them are: a brief description, temperament, life span, intelligence, level of affection, etc. It also provides a picture of the breed.

### Dependencies

To run the application, you need to have [Flutter](https://docs.flutter.dev/get-started/install) installed in your computer.
[Here](https://docs.flutter.dev/get-started/install/windows/desktop) you can verify if your computer meets the system requirements to install and run Flutter.

### Setting up project

1. Clone the repository from github. If you do not have Git installed click [Here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
In your terminal or command propt, use the following command to clone the repository:

2. cd into Cat-Breeds-App.

3. Use the command `flutter pub get` to get all the dependencies.

### Running app

Connect your android device/emulator using [adb](https://developer.android.com/tools/adb).
Use the following command to build and run the app in debug mode:

```
flutter run
```

### Configuration

If you have an Api key from TheCatApi ([You can get one here](https://thecatapi.com/)), you need to paste it as the value of the constant "apiKey" located in lib/utils/constants.dart
If you don't use a valid key, the app can't retrieve the photos of the breeds and instead it will show a placeholder image.

## Screenshots

### Splash screen
<img src="https://github.com/user-attachments/assets/80f8ae33-77bf-4030-aa12-3be8fd043216" height=500>

### Loading screen
<img src="https://github.com/user-attachments/assets/4272227a-7236-4251-84b6-f1e90348b635" height=500>

### Failure screen
<img src="https://github.com/user-attachments/assets/f596790d-b570-4f08-8f90-94a7e7254166" height=500>

### Landing page
<img src="https://github.com/user-attachments/assets/d0f70652-c54e-4ea9-a33a-46d95dea2a94" height=500>
<img src="https://github.com/user-attachments/assets/3bc21cff-3f25-4bc4-b7dd-ca6a73f08877" width=500>

### Breed information page
<img src="https://github.com/user-attachments/assets/fa263084-3e23-4ee5-a27f-2e080e9ab4c1" height=500>
<img src="https://github.com/user-attachments/assets/c845abf1-9578-426b-ba15-84eb19ef360d" height=500>
<img src="https://github.com/user-attachments/assets/3d0204b9-56a0-4209-ba73-0d105a9d5c98" width=500>






