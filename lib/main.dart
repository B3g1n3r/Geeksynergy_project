import 'package:flutter/material.dart';
import 'package:geeks/pages/splashscreen.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'pages/signinpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
