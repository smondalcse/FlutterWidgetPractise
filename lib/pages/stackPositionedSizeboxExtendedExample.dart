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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 400,
                width: 700,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
      );
  }
}