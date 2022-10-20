import 'package:flutter/material.dart';

class ParamsExample extends StatelessWidget {

  String? name, userName, email, Mobile;

  ParamsExample(this.name, this.userName, this.email, this.Mobile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Params Page')),
      body: Center(
        child: Column(
          children: [
          Text("Name: $name"),
          Text("User Name: $userName"),
          Text("Email: $email"),
          Text("Mobile: $Mobile")
        ],)
      ),
    );
  }
}