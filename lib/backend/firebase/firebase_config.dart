import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjnXjYgPQkbjafDEHSe2RGpd0CRe4PeVg",
            authDomain: "solar3-d02fa.firebaseapp.com",
            projectId: "solar3-d02fa",
            storageBucket: "solar3-d02fa.appspot.com",
            messagingSenderId: "301632889005",
            appId: "1:301632889005:web:811c23524dcd370e992624",
            measurementId: "G-LEW6QBWJ3B"));
  } else {
    await Firebase.initializeApp();
  }
}
