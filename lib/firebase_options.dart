import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
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
    apiKey: 'AIzaSyAIFZnMSkYRkDOCLFrrYZHj6F58kc5ytZU',
    appId: '1:109231185165:web:4ba59955547d0718c86444',
    messagingSenderId: '109231185165',
    projectId: 'watches-903',
    authDomain: 'watches-903.firebaseapp.com',
    storageBucket: 'watches-903.appspot.com',
    measurementId: 'G-6XWF20RQ1Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrGIia-sWxh5N6ucV9ai_b0QgmcAOR8lE',
    appId: '1:109231185165:android:1e5d6a4ff9081c62c86444',
    messagingSenderId: '109231185165',
    projectId: 'watches-903',
    storageBucket: 'watches-903.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAO8bNJh-GMnSkCKvb-ZjZObrgxJbRUeMg',
    appId: '1:109231185165:ios:34fcef1c6e555b2bc86444',
    messagingSenderId: '109231185165',
    projectId: 'watches-903',
    storageBucket: 'watches-903.appspot.com',
    iosBundleId: 'com.example.watchesapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAO8bNJh-GMnSkCKvb-ZjZObrgxJbRUeMg',
    appId: '1:109231185165:ios:44ce316ae89d1367c86444',
    messagingSenderId: '109231185165',
    projectId: 'watches-903',
    storageBucket: 'watches-903.appspot.com',
    iosBundleId: 'com.example.watchesapp.RunnerTests',
  );
}
