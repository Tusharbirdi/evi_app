import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:evi_app/mainscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:evi_app/screens/loginscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription<User?> user;
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        if (kDebugMode) {
          print('User is currently signed out!');
        }
      } else {
        if (kDebugMode) {
          print('User is signed in!');
        }
      }
    });
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Ubuntu',
        ),
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: const Text(
              'Welcome to Exposys Labs',
              style: TextStyle(fontSize: 24),
            ),
            nextScreen: FirebaseAuth.instance.currentUser == null
                ? const LoginScreen()
                : const MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));

    /*FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const MainScreen(),
    );*/
  }
}
