import 'package:flutter/material.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}

