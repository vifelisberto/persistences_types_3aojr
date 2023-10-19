import 'package:flutter/material.dart';
import 'package:persistences_types_3aojr/floor/screens/list.dart';
import 'package:persistences_types_3aojr/screens/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      routes: {
        "/" : (context) => PrincipalWidget(),
        "/books" : (context) => BooksListWidget(),
      },
      initialRoute: "/",
    );
  }
}