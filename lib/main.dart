import 'package:flutter/material.dart';
import 'package:shortpaper2_flutter/pantalla/lista_doctores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.greenAccent,
      ),
      home: const ListaDoctores(),
    );
  }
}

