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
    apiKey: 'AIzaSyBnTSd_CiA1VskgwsBvAlFmgnfiM1OkRjk',
    appId: '1:1050563996986:web:51fd98527480697911b403',
    messagingSenderId: '1050563996986',
    projectId: 'social-media-840da',
    authDomain: 'social-media-840da.firebaseapp.com',
    storageBucket: 'social-media-840da.appspot.com',
    measurementId: 'G-8DR9G8N2T6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsFBhC2zUsZWFpGWb1Z2HrnLCnpm-9myQ',
    appId: '1:1050563996986:android:9eb68e01758b894911b403',
    messagingSenderId: '1050563996986',
    projectId: 'social-media-840da',
    storageBucket: 'social-media-840da.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwCu40k7EA9JXVf3i8eLPUKb5FaAcX1nI',
    appId: '1:1050563996986:ios:fd3cd761a8f5701111b403',
    messagingSenderId: '1050563996986',
    projectId: 'social-media-840da',
    storageBucket: 'social-media-840da.appspot.com',
    iosBundleId: 'com.example.socailmedia',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwCu40k7EA9JXVf3i8eLPUKb5FaAcX1nI',
    appId: '1:1050563996986:ios:fd3cd761a8f5701111b403',
    messagingSenderId: '1050563996986',
    projectId: 'social-media-840da',
    storageBucket: 'social-media-840da.appspot.com',
    iosBundleId: 'com.example.socailmedia',
  );
}
