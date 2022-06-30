//import 'package:evi_app/mainscreen.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:evi_app/screens/homepage.dart';
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
  // This widget is the root application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      home: const LoginScreen(),
    );
  }
}
