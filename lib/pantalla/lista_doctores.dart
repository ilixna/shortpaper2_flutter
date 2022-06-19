import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shortpaper2_flutter/comun/generar_list_tile.dart';
import 'package:shortpaper2_flutter/estado/doctores_estado.dart';
import 'package:shortpaper2_flutter/modelo/especialidad.dart';
import 'package:shortpaper2_flutter/widget/barra.dart';
import 'package:shortpaper2_flutter/widget/card.dart';
import 'package:shortpaper2_flutter/widget/modelo/card_model.dart';
import 'package:shortpaper2_flutter/widget/modelo/expansion_modelo.dart';

class ListaDoctores extends StatefulWidget {
  const ListaDoctores({Key? key}) : super(key: key);

  @override
  State<ListaDoctores> createState() => _ListaDoctoresState();
}

class _ListaDoctoresState extends State<ListaDoctores> {
  Future? _doctoresFuture;

  Future _obtenerDoctores(){
    return Provider.of<EstadoDoctor>(context, listen: false).obtenerDoctoresDesdeApi();
  }



  @override
  void initState() {
    _doctoresFuture = _obtenerDoctores();
    super.initState();
  }

  void resetearEstado(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Doctores'),
          backgroundColor: Color.fromRGBO(23, 100, 165, 1),
        ),
        body: FutureBuilder(
          future: _doctoresFuture,
          builder: (ctx, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else {
              if (dataSnapshot.error != null) {
                return const Center(
                  child: Text('Algo salió mal',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                );
              }else{
                return Consumer<EstadoDoctor>(
                  builder: (ctx, doctorData, child) => RefreshIndicator(
                    onRefresh:() {  setState(() {}); return _doctoresFuture = _obtenerDoctores();},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          BarraDeBusqueda(callback: (val)=> resetearEstado(),),
                          const Divider(
                            height: 30,
                          ),
                          doctorData.doctores.isEmpty ? const Center(child: Text('No hay registros'),):
                          Expanded(
                            child: ListView.builder(
                                itemCount: doctorData.doctores.length,
                                itemBuilder: (ctx, i) {
                                  final doctor = doctorData.doctores[i];
                                  return  ListaCarta(
                                      data: CardModelo(
                                          campo1: doctor.genero.id == 1 ? "Dr. "+ doctor.nombre : "Dra. " + doctor.nombre,
                                          campo2: doctor.apellido,
                                          imagen: doctor.imagen,
                                          modelo: ExpansionModelo(
                                              title: 'Especialidades',
                                              expanded: GeneradorListTile<Especialidad>().generarListTile(doctor.especialidades)
                                          )
                                      )
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
          },
        )
    );
  }
}