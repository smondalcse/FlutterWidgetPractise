import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  @override
  _DrawerExampleState createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Example")),
      body: Column(children: [
        Text("Drawer text"),
        ElevatedButton(
        child: Text("Back to Dashboard"),
        onPressed: () { 
          Navigator.pop(context);
        })
      ],),
      );
  }
}