import 'package:flutter/material.dart';

class Details_page extends StatelessWidget {
  const Details_page({Key? key}) : super(key: key);
  static const route = "Details";

  @override
  Widget build(BuildContext context) {
    final Map _news_Data = ModalRoute.of(context)!.settings.arguments as Map;

    String get_DES(String? _des) {
      if (_des == null) {
        return "Empty Description";
      } else {
        return _des;
      }
    }
    String _get_image(String? _image) {
      if (_image == null) {
        return "https://picsum.photos/200/300";
      } else {
        return _image;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Todays News"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _news_Data["title"],
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(_get_image(_news_Data["urlToImage"])),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Author: ${_news_Data["author"]}"),
                    Text("Date: ${_news_Data["publishedAt"]}"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description: ",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    Text(get_DES("${_news_Data["description"]}")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
