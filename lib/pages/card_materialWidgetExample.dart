import 'package:flutter/material.dart';

class CardMaterialExample extends StatefulWidget {
  @override
  _CardMaterialExampleState createState() => _CardMaterialExampleState();
}

class _CardMaterialExampleState extends State<CardMaterialExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Material Example")),
      body: Column(children: [
        Text("Card Material text"),
        ElevatedButton(
        child: Text("Back to Dashboard"),
        onPressed: () { 
          Navigator.pop(context);
        })
      ],),
      );
  }
}