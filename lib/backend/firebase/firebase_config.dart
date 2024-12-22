import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdj5Sye8qeslIwTCSK2U2RKREFO042qGc",
            authDomain: "netfinity-71d31u.firebaseapp.com",
            projectId: "netfinity-71d31u",
            storageBucket: "netfinity-71d31u.firebasestorage.app",
            messagingSenderId: "785824431010",
            appId: "1:785824431010:web:15510dae2afb9c017b50fb"));
  } else {
    await Firebase.initializeApp();
  }
}
