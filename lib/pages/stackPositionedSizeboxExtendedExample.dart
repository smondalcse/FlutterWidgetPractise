import 'package:flutter/material.dart';

class StackPositionedSizeboxExtendedExample extends StatefulWidget {
  @override
  _StackPositionedSizeboxExtendedExampleState createState() => _StackPositionedSizeboxExtendedExampleState();
}

class _StackPositionedSizeboxExtendedExampleState extends State<StackPositionedSizeboxExtendedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StackPositionedSizeboxExtended Example")),
      body: Column(children: [
        Text("StackPositionedSizeboxExtended text"),
        ElevatedButton(
        child: Text("Back to Dashboard"),
        onPressed: () { 
          Navigator.pop(context);
        })
      ],),
      );
  }
}