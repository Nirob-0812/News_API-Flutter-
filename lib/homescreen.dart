import 'package:flutter/material.dart';
import 'package:urilaunch/pages/all.dart';
import 'package:urilaunch/pages/business.dart';
import 'package:urilaunch/pages/gadgets.dart';
import 'package:urilaunch/pages/sports.dart';

class HomeScreen extends StatelessWidget {
  static const route = "Home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            actions: [Icon(Icons.notifications_on)],
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "International News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          body: Column(
            children: [
              TabBar(
                labelPadding: EdgeInsets.all(15),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.blue,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Text("All News"),
                  Text("Business"),
                  Text("Gadgets"),
                  Text("Sports"),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  AllNews(),
                  Business(),
                  Gadgets(),
                  Sports(),
                ]),
              )
            ],
          )),
    );
  }
}
