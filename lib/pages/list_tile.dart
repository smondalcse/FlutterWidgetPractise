import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  @override
  _ListTileExampleState createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
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
        appBar: AppBar(title: Text("ListTile Example")),
        body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/flag.png'),
              ),
              title: Text(arrItems[index]),
              subtitle: Text(arrItems[index]),
              trailing: Icon(Icons.navigate_next_rounded),
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
