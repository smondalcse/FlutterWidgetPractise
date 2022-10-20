import 'package:flutter/material.dart';

class BottomModalSheetExample extends StatefulWidget {
  const BottomModalSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomModalSheetExample> createState() =>
      _BottomModalSheetExampleState();
}

class _BottomModalSheetExampleState extends State<BottomModalSheetExample> {
  String _selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Modal Sheet'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => _onButtonPressed(),
                child: Text('Show Modal Sheet')),
            SizedBox(
              height: 40,
            ),
            Text(
              _selectedOption,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              child: _buildBottomModalSheet(),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          );
        });
  }

  Column _buildBottomModalSheet() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Camera'),
          onTap: () => _selectedItem('Camera'),
        ),
        ListTile(
          leading: Icon(Icons.browse_gallery),
          title: Text('Gallery'),
          onTap: () => _selectedItem('Gallery'),
        ),
        ListTile(
          leading: Icon(Icons.file_open),
          title: Text('File Open'),
          onTap: () => _selectedItem('File Open'),
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Delete'),
          onTap: () => _selectedItem('Delete'),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Message'),
          onTap: () => _selectedItem('Message'),
        )
      ],
    );
  }

  void _selectedItem(String text) {
    Navigator.pop(context);
    setState(() {
      _selectedOption = text;
    });
  }
}
