import 'package:flutter/material.dart';

class ListaDoctores extends StatefulWidget {
  const ListaDoctores({Key? key}) : super(key: key);

  @override
  State<ListaDoctores> createState() => _ListaDoctoresState();
}

class _ListaDoctoresState extends State<ListaDoctores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Doctores'),
    ));
  }
}