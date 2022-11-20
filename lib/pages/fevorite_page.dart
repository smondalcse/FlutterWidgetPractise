import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/pages/navigation_drawer.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(title: Text('Favorite Page')),
    );
  }
}
