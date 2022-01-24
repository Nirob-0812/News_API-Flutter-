import 'package:flutter/material.dart';
import 'package:urilaunch/Details.dart';
import 'package:urilaunch/homescreen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        Details_page.route: (context) => Details_page(),
      },
    );
  }
}
