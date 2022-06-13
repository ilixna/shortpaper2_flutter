import 'package:flutter/material.dart';
import 'package:shortpaper2_flutter/widget/modelo/expansion_modelo.dart';

class CardModelo {
  final String campo1;
  final String campo2;
  final String imagen;
  final ExpansionModelo? modelo;

  CardModelo({
    required this.campo1,
    required this.campo2,
    required this.imagen,
    this.modelo
  });
}