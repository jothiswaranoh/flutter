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
    apiKey: 'AIzaSyACDrMmEfEe-goBiB-4Fd2DGnaSXlctcl0',
    appId: '1:424444172350:web:efa238cdd675e52f06596f',
    messagingSenderId: '424444172350',
    projectId: 'my-flutter-notes-0oabce',
    authDomain: 'my-flutter-notes-0oabce.firebaseapp.com',
    storageBucket: 'my-flutter-notes-0oabce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgdrFNfIYJ0cQVzLlWljQedLr0hnOW300',
    appId: '1:424444172350:android:8a3b3d44f6fb344106596f',
    messagingSenderId: '424444172350',
    projectId: 'my-flutter-notes-0oabce',
    storageBucket: 'my-flutter-notes-0oabce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoZ5lxxLo8JdNREpM_LgMkCzO58tRr378',
    appId: '1:424444172350:ios:855bcb1fc6c95bc706596f',
    messagingSenderId: '424444172350',
    projectId: 'my-flutter-notes-0oabce',
    storageBucket: 'my-flutter-notes-0oabce.appspot.com',
    iosClientId: '424444172350-62i20pcui474vabdf9eik8l9e4dk6klb.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoZ5lxxLo8JdNREpM_LgMkCzO58tRr378',
    appId: '1:424444172350:ios:855bcb1fc6c95bc706596f',
    messagingSenderId: '424444172350',
    projectId: 'my-flutter-notes-0oabce',
    storageBucket: 'my-flutter-notes-0oabce.appspot.com',
    iosClientId: '424444172350-62i20pcui474vabdf9eik8l9e4dk6klb.apps.googleusercontent.com',
    iosBundleId: 'com.example.notesflutter',
  );
}

