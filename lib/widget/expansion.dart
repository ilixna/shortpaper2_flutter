import 'package:shortpaper2_flutter/widget/modelo/expansion_modelo.dart';
import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  final ExpansionModelo? data;
  const Expansion({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      child: ExpansionTile(
          title: Text(
            data!.title,
            style: TextStyle(
              color: Color.fromRGBO(23, 100, 165, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          children: data!.expanded
      ),
    );
  }
}
