import 'package:flutter/material.dart';
import 'package:persistences_types_3aojr/floor/models/book.dart';
import 'package:persistences_types_3aojr/floor/screens/add.dart';

class BooksListWidget extends StatefulWidget {
  const BooksListWidget({super.key});

  @override
  State<BooksListWidget> createState() => _BooksListWidgetState();
}

class _BooksListWidgetState extends State<BooksListWidget> {
  final List<Book> books = [
    Book("Livro 1", "Autor 1"),
    Book("Livro 2", "Autor 2"),
  ];

  final title = const Text("Livros");
  final iconAdd = const Icon(Icons.add);
  final padding = const EdgeInsets.symmetric(horizontal: 8);
  final addWidget = BookAddWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => addWidget)),
              icon: iconAdd)
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => _buildItem(index),
          itemCount: books.length),
    );
  }

  Widget _buildItem(index) {
    Book book = books[index];
    return Padding(
        padding: padding,
        child: Card(
          child: ListTile(
            leading: Text(book.id != null ? book.id!.toString() : ""),
            title: Text(book.name),
            subtitle: Text(book.author),
          ),
        ));
  }
}
