import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Button Example")),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: onPressedElevatedButton,
                    child: Text('Elevated Button')),
                OutlinedButton(
                    onPressed: onPressedOutlineButton,
                    child: Text('Outline Button')),
                TextButton(
                    onPressed: onPressedTextButton, child: Text('Text Button'))
              ],
            ),
          ),
        ));
  }

  void onPressedElevatedButton() {
    print('elevated button');
  }

  void onPressedOutlineButton() {
 
  }

  void onPressedTextButton() {
    print('Text button');
  }
}
