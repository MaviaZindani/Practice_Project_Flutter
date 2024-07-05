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
    apiKey: 'AIzaSyDkD_P57ROSHj9sT4M7ENdUCbObTTLpeNA',
    appId: '1:630434790044:web:7011d5fe68fdb90ae90b59',
    messagingSenderId: '630434790044',
    projectId: 'database-ac3d2',
    authDomain: 'database-ac3d2.firebaseapp.com',
    storageBucket: 'database-ac3d2.appspot.com',
    measurementId: 'G-8BR0C547P9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUF6tapb97hVF5Pt-ur0oJ76dCRb5zkz4',
    appId: '1:630434790044:android:d20c4b1bacc692d7e90b59',
    messagingSenderId: '630434790044',
    projectId: 'database-ac3d2',
    storageBucket: 'database-ac3d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBSpr3ufe-ZZkpjgqY8Sn99i_hBo6A8FU',
    appId: '1:630434790044:ios:a60727a64c945a12e90b59',
    messagingSenderId: '630434790044',
    projectId: 'database-ac3d2',
    storageBucket: 'database-ac3d2.appspot.com',
    iosBundleId: 'com.example.tutionApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBSpr3ufe-ZZkpjgqY8Sn99i_hBo6A8FU',
    appId: '1:630434790044:ios:a60727a64c945a12e90b59',
    messagingSenderId: '630434790044',
    projectId: 'database-ac3d2',
    storageBucket: 'database-ac3d2.appspot.com',
    iosBundleId: 'com.example.tutionApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDkD_P57ROSHj9sT4M7ENdUCbObTTLpeNA',
    appId: '1:630434790044:web:b50ca7ee1b4fc331e90b59',
    messagingSenderId: '630434790044',
    projectId: 'database-ac3d2',
    authDomain: 'database-ac3d2.firebaseapp.com',
    storageBucket: 'database-ac3d2.appspot.com',
    measurementId: 'G-RKT10R199L',
  );
}
