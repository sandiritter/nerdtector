import 'package:flutter/material.dart';
import 'package:nerdtectr/screens/landingPage.dart';

const AppBarColor = const Color(0xFF151026);


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: AppBarColor,
      ),
      home: new LandingPage(),
    );
  }
}
