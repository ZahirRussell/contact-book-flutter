import 'package:flutter/material.dart';
import 'package:flutter_signin/screens/homepage.dart';
import 'package:flutter_signin/screens/login.dart';
import 'package:flutter_signin/screens/mainscreen.dart';
import 'package:flutter_signin/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
      routes: {
        MainScreen.routeName: (ctx) => MainScreen(),
        SignUp.routeName: (ctx) => SignUp(),
        Login.routeName: (ctx) => Login(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
