import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvhgdtFdAh3p7HmyKzGYjHy0v22WIgKzU",
            authDomain: "cugrads-7d44f.firebaseapp.com",
            projectId: "cugrads-7d44f",
            storageBucket: "cugrads-7d44f.appspot.com",
            messagingSenderId: "365640520097",
            appId: "1:365640520097:web:46ca39d7d576ef2593bbe0",
            measurementId: "G-HK48J2V45Q"));
  } else {
    await Firebase.initializeApp();
  }
}
