import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = '/Home Screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Home"),
      ),
    );
  }
}
