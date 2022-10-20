import 'package:flutter/material.dart';

class TextFiledExample extends StatefulWidget {
  @override
  _TextFiledExampleState createState() => _TextFiledExampleState();
}

class _TextFiledExampleState extends State<TextFiledExample> {
  @override
  Widget build(BuildContext context) {
    var loginText = TextEditingController();
    var passwordText = TextEditingController();
    var confirmPasswordText = TextEditingController();

    return Scaffold(
        appBar: AppBar(title: Text("TextFiled Example")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  controller: loginText,
                  decoration: InputDecoration(
                    suffixText: "Login Id",
                    //        prefixText: "Enter Login ID",
                    prefixIcon: IconButton(
                      icon: Icon(Icons.email),
                      color: Colors.pink[400],
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 98, 208),
                            width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 94, 97, 250), width: 2)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  controller: passwordText,
                  decoration: InputDecoration(
                    suffixText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.lock),
                      color: Colors.pink[400],
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 186, 98),
                            width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 94, 97, 250), width: 2)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: confirmPasswordText,
                  decoration: InputDecoration(
                    suffixText: "Confirm Password",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.lock),
                      color: Colors.pink[400],
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 186, 98),
                            width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 94, 97, 250), width: 2)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  String inputLoginID = loginText.text.toString().trim();
                  String inputPassword = passwordText.text.toString().trim();
                  String inputConfirmPasswordText =
                      confirmPasswordText.text.toString().trim();
                  print(
                      "Input Login ID: $inputLoginID, Input Password: $inputPassword, Input Confirm Password: $inputConfirmPasswordText");
                },
                child: Text('Submit'))
          ],
        ));
  }
}
