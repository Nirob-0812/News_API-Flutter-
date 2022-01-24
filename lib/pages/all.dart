import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:urilaunch/Details.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  final String url =
      "https://newsapi.org/v2/everything?q=tesla&from=2021-10-25&sortBy=publishedAt&apiKey=40dcb1eb6a324e239e0acdee820646a6";

  List all_News = [];

  Future getnews() async {
    Map newsData = {};
    final respose = await http.get(Uri.parse(url));
    print(respose.body);
    if (respose.statusCode == 200) {
      setState(() {
        newsData = jsonDecode(respose.body);
        all_News = newsData["articles"];
      });
    }
  }

  String getaouthor(String? _author) {
    if (_author == null) {
      return "Empty Author";
    } else {
      return _author;
    }
  }

  String getDescription(String? _description) {
    if (_description == null) {
      return "Empty Description";
    } else {
      return _description;
    }
  }
  String get_name(String? _name) {
    if (_name == null) {
      return "Empty Name";
    } else {
      return _name;
    }
  }
  String get_image(String? _image) {
    if (_image == null) {
      return "https://picsum.photos/200/300";
    } else {
      return _image;
    }
  }

  @override
  void initState() {
    getnews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: all_News.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(Details_page.route,
                          arguments: all_News[index]);
                    },
                    trailing: Image(
                      height: 100,
                      width: 100,
                      image: NetworkImage(get_image(all_News[index]["urlToImage"])),
                    ),
                    title: Text(get_name(all_News[index]["source"]["name"]),
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    // title: Text(all_News[index]["author"]),
                    isThreeLine: true,
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                          Text(
                            getaouthor(all_News[index]["author"]),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(getDescription(all_News[index]["title"])),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      )),
                    ),
                  ),
                ),
              );
            }));
  }
}
