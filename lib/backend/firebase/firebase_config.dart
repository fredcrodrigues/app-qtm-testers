import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDvN9osKDQD8zqJ9qVNtlTxe7qbXQzCPso",
            authDomain: "app-qtm-testadores.firebaseapp.com",
            projectId: "app-qtm-testadores",
            storageBucket: "app-qtm-testadores.appspot.com",
            messagingSenderId: "1057847752225",
            appId: "1:1057847752225:web:360f71e7e002c100131560",
            measurementId: "G-TQ8336ZRBK"));
  } else {
    await Firebase.initializeApp();
  }
}
