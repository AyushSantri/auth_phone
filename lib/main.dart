import 'package:atm_auth/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAUXeUsWDb2WFuWvg2m5gnI64Q0AmRmZ8w",
          appId: "1:171412850690:web:af90a601e2314f0a22ff1b",
          messagingSenderId: "171412850690",
          projectId: "atm-auth-232c9"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
