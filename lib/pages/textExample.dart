import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  @override
  _TextExampleState createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Example")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(text,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.deepPurpleAccent[900],
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.amber[200])),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Text("This is a sample text",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.deepPurpleAccent[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Raleway')),
          ),
          ElevatedButton(
              child: Text("Back to Dashboard"),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
