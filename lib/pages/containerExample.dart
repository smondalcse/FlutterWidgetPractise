import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Container Example")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "This is a container",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        backgroundColor: Colors.blue[600],
                        fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "This is a container",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        backgroundColor: Colors.blue[600],
                        fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
