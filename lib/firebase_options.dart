// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCwlw89S36eprosPDqdL9za8BdA-N6XcO4',
    appId: '1:316595059953:web:3f0e3ed73fa48214f9fd50',
    messagingSenderId: '316595059953',
    projectId: 'pigemshubshop',
    authDomain: 'pigemshubshop.firebaseapp.com',
    storageBucket: 'pigemshubshop.appspot.com',
    measurementId: 'G-N1FQ4JPX7V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEM6wWD-KeL_z_GxaeZSnKsqXGLEAhE7w',
    appId: '1:316595059953:android:16e2d3c4c97a097bf9fd50',
    messagingSenderId: '316595059953',
    projectId: 'pigemshubshop',
    storageBucket: 'pigemshubshop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9cbnpwG1L4aX-_e2NHlvEzo3BysofH4k',
    appId: '1:316595059953:ios:0395b88809934767f9fd50',
    messagingSenderId: '316595059953',
    projectId: 'pigemshubshop',
    storageBucket: 'pigemshubshop.appspot.com',
    androidClientId: '316595059953-iic7omeop3tn1gdvv92nq7ipeoa13iuv.apps.googleusercontent.com',
    iosClientId: '316595059953-d08od12aku3mt8kg20i618b6dbr92v4e.apps.googleusercontent.com',
    iosBundleId: 'com.pigemshubshop.pigemshubshop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9cbnpwG1L4aX-_e2NHlvEzo3BysofH4k',
    appId: '1:316595059953:ios:53f12f5a4d945b9af9fd50',
    messagingSenderId: '316595059953',
    projectId: 'pigemshubshop',
    storageBucket: 'pigemshubshop.appspot.com',
    androidClientId: '316595059953-iic7omeop3tn1gdvv92nq7ipeoa13iuv.apps.googleusercontent.com',
    iosClientId: '316595059953-jg0h0fk8548re31lgk1vdi9288kh04hk.apps.googleusercontent.com',
    iosBundleId: 'com.pigemshubshop.pigemshubshop.RunnerTests',
  );
}
