import 'package:flutter/material.dart';

class RowColumnExample extends StatefulWidget {
  @override
  _RowColumnExampleState createState() => _RowColumnExampleState();
}

class _RowColumnExampleState extends State<RowColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("RowColumn Example")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              color: Colors.tealAccent[100],
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    rowDemo("A"),
                    rowDemo("B"),
                    rowDemo("C"),
                    rowDemo("E"),
                    rowDemo("F"),
                    ElevatedButton(onPressed: null, child: Text("Click Me"))
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              color: Colors.amber[300],
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rowDemo("A"),
                    rowDemo("B"),
                    rowDemo("C"),
                    rowDemo("E"),
                    rowDemo("F"),
                    ElevatedButton(onPressed: null, child: Text("Click Me"))
                  ]),
            ),
            rowDemo("A"),
            rowDemo("B"),
            rowDemo("C"),
            rowDemo("E"),
            rowDemo("F"),
            ElevatedButton(onPressed: null, child: Text("Click Me"))
          ],
        ));
  }

  Widget rowDemo(String text) {
    return Text(text,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.black87,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.normal));
  }
}
