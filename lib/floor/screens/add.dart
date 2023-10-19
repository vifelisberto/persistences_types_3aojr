import 'package:flutter/material.dart';
import 'package:persistences_types_3aojr/floor/models/book.dart';

class BookAddWidget extends StatelessWidget {
  BookAddWidget({super.key});

  final title = const Text("Novo livro");
  final buttonLabel = const Text("Salvar");
  final padding = const EdgeInsets.all(8);
  final paddingButton = const EdgeInsets.only(top: 8);
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nameDecoration = const InputDecoration(
      hintText: "Nome do livro", labelText: "Nome do livro");
  final _authorController = TextEditingController();
  final _authorDecoration = const InputDecoration(
      hintText: "Autor do livro", labelText: "Autor do livro");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
          padding: padding,
          child: Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                decoration: _nameDecoration,
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nome do livro inválido";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: _authorDecoration,
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Autor do livro inválido";
                  }
                  return null;
                },
              ),
              Padding(
                  padding: paddingButton,
                  child: ElevatedButton(
                    child: buttonLabel,
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        
                      }
                    },
                  ))
            ]),
          )),
    );
  }
}
