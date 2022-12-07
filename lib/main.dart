import 'package:flutter/material.dart';
import 'package:test/models/student.dart';
import 'package:test/pages/AlertDialogExample.dart';
import 'package:test/pages/GoogleMapExample.dart';
import 'package:test/pages/ListViewFilterSearchExample.dart';
import 'package:test/pages/bottom_modal_sheet.dart';
import 'package:test/pages/bottom_navigation_bar.dart';
import 'package:test/pages/buttonExample.dart';
import 'package:test/pages/card_materialWidgetExample.dart';
import 'package:test/pages/containerExample.dart';
import 'package:test/pages/drop_down_example.dart';
import 'package:test/pages/iconImageListviewExample.dart';
import 'package:test/pages/list_tile.dart';
import 'package:test/pages/listview.dart';
import 'package:test/pages/listview_ListTile_Listviewbuilder_Divider.dart';
import 'package:test/pages/navigation_drawer.dart';
import 'package:test/pages/params.dart';
import 'package:test/pages/params_model.dart';
import 'package:test/pages/rowColumnExample.dart';
import 'package:test/pages/scrollview.dart';
import 'package:test/pages/shared_preference_example.dart';
import 'package:test/pages/stackPositionedSizeboxExtendedExample.dart';
import 'package:test/pages/textExample.dart';
import 'package:test/pages/text_field.dart';
import 'package:test/pages/toast.dart';

void main() {
  runApp(new MaterialApp(
    home: Dashboard(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Widget Practise',
                    style: TextStyle(
                        fontSize: 35,
                        backgroundColor: Colors.orange,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Text Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => TextExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Container Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ContainerExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("TextField Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => TextFiledExample());
                            Navigator.push(context, route);
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Button Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ButtonExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("RowColumn Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => RowColumnExample());
                            Navigator.push(context, route);
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Scrollview Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ScrollviewExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Card Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => CardMaterialExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("IconImageListview Example"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) =>
                                    IconImageListviewExample());
                            Navigator.push(context, route);
                          }),
                    ],
                  ),
                ),
                ElevatedButton(
                    child: Text("Listview ListTile ListviewBuilder Example"),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              ListviewListTileListviewbuilderExample());
                      Navigator.push(context, route);
                    }),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Listview"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ListviewExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("ListTile"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ListTileExample());
                            Navigator.push(context, route);
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Dropdown"),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => DropdownExample());
                            Navigator.push(context, route);
                          }),
                    ],
                  ),
                ),
                ElevatedButton(
                    child: Text("Stack Positioned Sizebox Extended Example"),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              StackPositionedSizeboxExtendedExample());
                      Navigator.push(context, route);
                    }),
                ElevatedButton(
                    child: Text("Toast Example"),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => ToastExample());
                      Navigator.push(context, route);
                    }),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Params Example"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ParamsExample(
                                        "Sanat",
                                        "20170546",
                                        "cse.sanat@gmail.com",
                                        "01712995265")));
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Model Pass Example"),
                          onPressed: () {
                            Student objStudent = Student("Sanat Mondal",
                                "20170546", "Dhaka", "0171222222");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ModelParams(student: objStudent),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Bottom Navigation Bar"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavigationBarExample(),
                              ),
                            );
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Navigation Drawer"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NavigationDrawerExample(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Bottom Modal Sheet"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomModalSheetExample(),
                              ),
                            );
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Google Map"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GoogleMapExample(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Shared Preference"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SharedPreferenceExample(),
                              ),
                            );
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          child: Text("Alert Box"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlertDialogExample(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ElevatedButton(
                          child: Text("Search & Filter ListView"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListViewFilterSearchExample(),
                              ),
                            );
                          }),
                      SizedBox(
                        width: 5,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
