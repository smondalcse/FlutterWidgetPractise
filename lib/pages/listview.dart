import 'package:flutter/material.dart';

class ListviewExample extends StatefulWidget {
  @override
  _ListviewExampleState createState() => _ListviewExampleState();
}

class _ListviewExampleState extends State<ListviewExample> {
  var arrItems = [
    'Row Title - 1',
    'Row Title - 2',
    'Row Title - 3',
    'Row Title - 4',
    'Row Title - 5',
    'Row Title - 6',
    'Row Title - 7',
    'Row Title - 8',
    'Row Title - 9',
    'Row Title - 10',
    'Row Title - 11',
    'Row Title - 12',
    'Row Title - 13',
    'Row Title - 14'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listview Example")),
        body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      arrItems[index],
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      arrItems[index],
                      style: TextStyle(fontSize: 15.0),
                    )
                  ]),
            );
          }),
          itemCount: arrItems.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 15,
              color: Colors.red[400],
              thickness: 1,
            );
          },
        ));
  }
}
