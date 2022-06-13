import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortpaper2_flutter/estado/doctores_estado.dart';

typedef void StringCallback(String val);


class BarraDeBusqueda extends StatefulWidget {
  final StringCallback callback;
  const BarraDeBusqueda({Key? key, required this.callback, }) : super(key: key);

  @override
  State<BarraDeBusqueda> createState() => _BarraDeBusquedaState();}

class _BarraDeBusquedaState extends State<BarraDeBusqueda> {
  void _filtrarDoctorPorEspecialidad(String filtro, BuildContext context) async {
    widget.callback(filtro);
    await Provider.of<EstadoDoctor>(context, listen: false).obtenerDoctoresConFiltro(filtro);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value){_filtrarDoctorPorEspecialidad(value, context);},
      decoration: const InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
          contentPadding: EdgeInsets.all(10),
          hintText: 'Buscar',
          icon: Icon(Icons.person_search)
      ),
    );
  }
}
