import 'package:flutter/material.dart';
import 'package:persistences_types_3aojr/firebase/models/car.dart';
import 'package:persistences_types_3aojr/firebase/screens/add.dart';
import 'package:persistences_types_3aojr/utils/constants.dart';

class CarsListWidget extends StatefulWidget {
  const CarsListWidget({super.key});

  @override
  State<CarsListWidget> createState() => _CarsListWidgetState();
}

class _CarsListWidgetState extends State<CarsListWidget> {
  final List<Car> books = [
    Car("Carro 1", "Autor 1"),
    Car("Carro 2", "Autor 2"),
  ];

  final title = const Text("Carros");
  final addWidget = CarAddWidget();

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
    Car book = books[index];
    return Padding(
        padding: padding,
        child: Card(
          child: ListTile(
            leading: Text(book.id != null ? book.id!.toString() : ""),
            title: Text(book.brand),
            subtitle: Text(book.model),
          ),
        ));
  }
}
