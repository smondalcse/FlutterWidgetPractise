import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceExample> createState() => _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {

  @override
  void initState() {
    // TODO: implement initState
    getCounterValue();
    super.initState();
  }

  int counter  = 0;

  setCounterValue() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState((){
      counter++;
      print(counter);
      pref.setInt('counter', counter);
      print(pref.getInt('counter'));
    });

  }

  getCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState((){
      counter = pref.getInt('counter')!;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preference'),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('Counter value: $counter'),
              ElevatedButton(onPressed: (){
                setCounterValue();
              }, child: Text('Counter++'))
            ],
          ),
        ),
      ),
    );
  }
}
