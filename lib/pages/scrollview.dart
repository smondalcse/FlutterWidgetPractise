import 'package:flutter/material.dart';

class ScrollviewExample extends StatefulWidget {
  @override
  _ScrollviewExampleState createState() => _ScrollviewExampleState();
}

class _ScrollviewExampleState extends State<ScrollviewExample> {
  String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Scrollview Example")),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        height: 200,
                        width: 200,
                        color: Colors.grey[400],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        height: 200,
                        width: 200,
                        color: Colors.amber[400],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        height: 200,
                        width: 200,
                        color: Colors.brown[400],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        height: 200,
                        width: 200,
                        color: Colors.cyan[400],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        height: 200,
                        width: 200,
                        color: Colors.deepPurple[400],
                      )
                    ],
                  ),
                ),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow(),
                demoRow()
              ],
            ),
          ),
        ));
  }

  Widget demoRow() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 200,
      color: Colors.indigo[600],
    );
  }
}
