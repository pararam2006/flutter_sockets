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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB2-YveUyny-ZiFsiZm7vzF0tjHGxnUkd0',
    appId: '1:775462410067:web:edbc8944f6ae9ef1cab3a6',
    messagingSenderId: '775462410067',
    projectId: 'flutter-sockets',
    authDomain: 'flutter-sockets.firebaseapp.com',
    storageBucket: 'flutter-sockets.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDE-q6XaYIlwJ_JzCzSBOuh56R_HJxpkS4',
    appId: '1:775462410067:android:62b7a7b097d9045acab3a6',
    messagingSenderId: '775462410067',
    projectId: 'flutter-sockets',
    storageBucket: 'flutter-sockets.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB2-YveUyny-ZiFsiZm7vzF0tjHGxnUkd0',
    appId: '1:775462410067:web:adb3060b5834aac8cab3a6',
    messagingSenderId: '775462410067',
    projectId: 'flutter-sockets',
    authDomain: 'flutter-sockets.firebaseapp.com',
    storageBucket: 'flutter-sockets.firebasestorage.app',
  );

}