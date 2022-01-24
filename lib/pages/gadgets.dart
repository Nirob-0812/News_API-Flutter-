import 'package:flutter/material.dart';
class Gadgets extends StatefulWidget {
  const Gadgets({Key? key}) : super(key: key);

  @override
  _GadgetsState createState() => _GadgetsState();
}

class _GadgetsState extends State<Gadgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
