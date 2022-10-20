import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastExample extends StatefulWidget {
  const ToastExample({ Key? key }) : super(key: key);

  @override
  State<ToastExample> createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Toast Example")),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      showToast("I am a toast");
                    },
                    child: Text('Show Toast')),
                
              ],
            ),
          ),
        ));
  }

  void showToast(String msg) {
      /*
  late FToast fToast;
  fToast = FToast();
  fToast.init(context);

  fToast.showToast(
    toastDuration: const Duration(milliseconds: 2000),
    child: Material(
      color: Colors.white,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.done),
            Text(
              "Press and hold to send Alert!",
              style: TextStyle(color: Colors.black87, fontSize: 16.0),
            )
          ],
        ),
      ),
    ),
    gravity: ToastGravity.BOTTOM,
  );
*/
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
  }

}
