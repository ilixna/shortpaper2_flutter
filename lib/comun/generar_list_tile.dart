import 'package:flutter/material.dart';

class GeneradorListTile<T> {
  List<ListTile> generarListTile(List<T> lista) {
    final List<ListTile> listaARetornar = [];
    for (var e in lista) {
      listaARetornar.add(
          ListTile(title: Text(e.toString()),)
      );
    }
    return listaARetornar;
  }
}