import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Post'),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Center(child: Container(child: Text('Post Page Content'))),
    );
  }
}
