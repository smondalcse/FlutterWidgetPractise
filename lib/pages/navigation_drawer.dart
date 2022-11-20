import 'package:flutter/material.dart';
import 'package:test/pages/buttonExample.dart';

import 'fevorite_page.dart';

class NavigationDrawerExample extends StatefulWidget {
  @override
  _NavigationDrawerExampleState createState() => _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navigation Drawer")),
        drawer: const NavigationDrawer(),
        body: Container());
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            buildHeader(context),
            buildMenuItems(context)
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('images/flag.png'),
          ),
          SizedBox(height: 12,),
          Text('Sanat Mondal', style: TextStyle(fontSize: 20, color: Colors.black),),
          SizedBox(height: 5,),
          Text('cse.sanat@gmail.com', style: TextStyle(fontSize: 12, color: Colors.black),),
          SizedBox(height: 20,),
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 12,
        children: [
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationDrawerExample()));
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_add_outlined),
            title: Text('Favorite'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavoritePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.workspaces_filled),
            title: Text('Workflow'),
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FavoritePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.update_rounded),
            title: Text('Updates'),
            onTap: (){},
          ),
          Divider(color: Colors.black12, height: 1,),
          ListTile(
            leading: Icon(Icons.plumbing),
            title: Text('Plugins'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text('Notifications'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
