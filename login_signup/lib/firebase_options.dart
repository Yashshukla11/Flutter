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
    apiKey: 'AIzaSyC3JfZlGCOAaRXsEuZ-mxQPgRmo-Axl4RQ',
    appId: '1:128529373383:web:8c56b96a488fe457e746e2',
    messagingSenderId: '128529373383',
    projectId: 'fir-login-72a3a',
    authDomain: 'fir-login-72a3a.firebaseapp.com',
    storageBucket: 'fir-login-72a3a.appspot.com',
    measurementId: 'G-28YF6H9HXM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkwbZ629NfIzRwrJGiZRArArJIqEDm-Uo',
    appId: '1:128529373383:android:d2f0704bffe4b951e746e2',
    messagingSenderId: '128529373383',
    projectId: 'fir-login-72a3a',
    storageBucket: 'fir-login-72a3a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZCBp-2VGSfmpXtmoJ2SlLsMMuGdu2eQ0',
    appId: '1:128529373383:ios:37a73826346ec01be746e2',
    messagingSenderId: '128529373383',
    projectId: 'fir-login-72a3a',
    storageBucket: 'fir-login-72a3a.appspot.com',
    iosBundleId: 'com.example.loginSignup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZCBp-2VGSfmpXtmoJ2SlLsMMuGdu2eQ0',
    appId: '1:128529373383:ios:f8f5c06cc32fdbf6e746e2',
    messagingSenderId: '128529373383',
    projectId: 'fir-login-72a3a',
    storageBucket: 'fir-login-72a3a.appspot.com',
    iosBundleId: 'com.example.loginSignup.RunnerTests',
  );
}