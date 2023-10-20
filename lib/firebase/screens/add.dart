import 'package:flutter/material.dart';
import 'package:persistences_types_3aojr/utils/constants.dart';

class CarAddWidget extends StatelessWidget {
  CarAddWidget({super.key});

  final title = const Text("Novo carro");
  final _formKey = GlobalKey<FormState>();
  final _brandController = TextEditingController();
  final _brandDecoration = const InputDecoration(
      hintText: "Marca do carro", labelText: "Marca do carro");
  final _modelController = TextEditingController();
  final _modelDecoration = const InputDecoration(
      hintText: "Modelo do carro", labelText: "Modelo do carro");

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
                decoration: _brandDecoration,
                controller: _brandController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Marca do carro inválido";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: _modelDecoration,
                controller: _modelController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Modelo do carro inválido";
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
