import 'package:flutter/material.dart';
import 'screens/log_in.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Screen App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
