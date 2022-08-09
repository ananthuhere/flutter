import 'package:flutter/material.dart';
import 'package:sample_demo/screens/login.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
