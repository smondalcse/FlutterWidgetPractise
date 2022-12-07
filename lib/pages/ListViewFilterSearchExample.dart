import 'package:flutter/material.dart';
import 'package:test/models/books.dart';

class ListViewFilterSearchExample extends StatefulWidget {
  @override
  _ListViewFilterSearchExampleState createState() =>
      _ListViewFilterSearchExampleState();
}

class _ListViewFilterSearchExampleState
    extends State<ListViewFilterSearchExample> {
  final controller = TextEditingController();
  List<Book> books = allBooks;
  final String hint = 'Book Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListViewFilterSearch Example")),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.close),
                          iconSize: 20,
                          onPressed: () {
                            setState(() {
                              controller.text = '';
                              searchBook('');
                            });
                          },
                        ),
                        hintText: hint,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red))),
                    onChanged: searchBook,
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return ListTile(
                      title: Text(book.title),
                      leading: Image.network(
                        book.urlImage,
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                      onTap: () {
                        print(book.title);
                      },
                    );
                  },
                ))
              ],
            ),
          ),
        ));
  }

  void searchBook(String query) {
    final suggestion = allBooks.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();

    setState(() => books = suggestion);
  }
}
