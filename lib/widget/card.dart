import 'package:flutter/material.dart';
import 'package:shortpaper2_flutter/widget/expansion.dart';
import 'package:shortpaper2_flutter/widget/modelo/card_model.dart';

class ListaCarta extends StatefulWidget {
  final CardModelo data;
  const ListaCarta({Key? key, required this.data}) : super(key: key);

  @override
  State<ListaCarta> createState() => _ListaCartaState();
}

class _ListaCartaState extends State<ListaCarta> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      margin: const EdgeInsets.only(bottom: 15),
      color: const Color.fromRGBO(255, 255, 255, 2),
        shape: const RoundedRectangleBorder(
          side: const BorderSide(color: Color.fromRGBO(193, 193, 193, 1), width: 2),
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(30), topRight: Radius.circular(10), topLeft: Radius.circular(10))
        ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
            width: 300,
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(75.0),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 50,
                        child: Image.network(
                          widget.data.imagen,
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                            return  CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 50,
                            );
                          } ,
                          height: 150.0,
                          width: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(widget.data.campo1 + " " + widget.data.campo2,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(
                          height: 20,
                        ),
                      ],
                    )

                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
               widget.data.modelo != null ? Expansion(data: widget.data.modelo): const Divider()
              ],
            ),
          ),
        )
      );
  }
}
