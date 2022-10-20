import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/models/student.dart';

class ModelParams extends StatefulWidget {

  ModelParams({required this.student});
  Student student;

  @override
  _ModelParamsState createState() => _ModelParamsState();
}

class _ModelParamsState extends State<ModelParams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Passing Example'),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Name: " + widget.student.name),
          Text("Roll: " + widget.student.roll),
          Text("Address: " + widget.student.address),
          Text("Mobile: " + widget.student.mobile)
        ],
      )),
    );
  }
}
