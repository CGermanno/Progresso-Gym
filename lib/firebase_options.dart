// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBD39_q6mpfnOIgMe6yrkxVc0HyOIpdqk0',
    appId: '1:907249757559:web:9e5d3164157ecc03a64572',
    messagingSenderId: '907249757559',
    projectId: 'progresso-gym',
    authDomain: 'progresso-gym.firebaseapp.com',
    storageBucket: 'progresso-gym.firebasestorage.app',
    measurementId: 'G-RG1JRJC03V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWp8BJQ-G46H-RT8V2QNAWdrZjOchBjMg',
    appId: '1:907249757559:android:c050adc2ef1337bda64572',
    messagingSenderId: '907249757559',
    projectId: 'progresso-gym',
    storageBucket: 'progresso-gym.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvOSy-NsZRWhmEVbEZcbvbdg3CMIbxKTk',
    appId: '1:907249757559:ios:13db124378baab9fa64572',
    messagingSenderId: '907249757559',
    projectId: 'progresso-gym',
    storageBucket: 'progresso-gym.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplicationReceitas2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAvOSy-NsZRWhmEVbEZcbvbdg3CMIbxKTk',
    appId: '1:907249757559:ios:13db124378baab9fa64572',
    messagingSenderId: '907249757559',
    projectId: 'progresso-gym',
    storageBucket: 'progresso-gym.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplicationReceitas2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBD39_q6mpfnOIgMe6yrkxVc0HyOIpdqk0',
    appId: '1:907249757559:web:90fd9b451a304b72a64572',
    messagingSenderId: '907249757559',
    projectId: 'progresso-gym',
    authDomain: 'progresso-gym.firebaseapp.com',
    storageBucket: 'progresso-gym.firebasestorage.app',
    measurementId: 'G-GER0727WJK',
  );
}
