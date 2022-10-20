import 'package:flutter/material.dart';

class IconImageListviewExample extends StatefulWidget {
  @override
  _IconImageListviewExampleState createState() => _IconImageListviewExampleState();
}

class _IconImageListviewExampleState extends State<IconImageListviewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IconImageListview Example")),
      body: Column(children: [
        Text("IconImageListview text"),
        ElevatedButton(
        child: Text("Back to Dashboard"),
        onPressed: () { 
          Navigator.pop(context);
        })
      ],),
      );
  }
}