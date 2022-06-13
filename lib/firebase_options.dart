// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC8kEACZsgMLKKWupsNZr4vtEoQUzI8blM',
    appId: '1:844698306688:web:5fa8ffdc38b3348ae17e65',
    messagingSenderId: '844698306688',
    projectId: 'chat-app-f7176',
    authDomain: 'chat-app-f7176.firebaseapp.com',
    storageBucket: 'chat-app-f7176.appspot.com',
    measurementId: 'G-V790W60FNX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXcFHDqn0ucDHQI4-P_Wge55SEcglsjyI',
    appId: '1:844698306688:android:4647dcbfca85ce15e17e65',
    messagingSenderId: '844698306688',
    projectId: 'chat-app-f7176',
    storageBucket: 'chat-app-f7176.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqsxy82Wj3pzV8XXVU0QvxUiTzEleHrgs',
    appId: '1:844698306688:ios:e2f8bf0f9d695b3ce17e65',
    messagingSenderId: '844698306688',
    projectId: 'chat-app-f7176',
    storageBucket: 'chat-app-f7176.appspot.com',
    iosClientId: '844698306688-u058ajumfjq04l8c437opf9m1slvuaat.apps.googleusercontent.com',
    iosBundleId: 'com.example.schol',
  );
}
