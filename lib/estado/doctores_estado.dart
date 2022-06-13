import 'package:flutter/material.dart';
import 'package:shortpaper2_flutter/modelo/doctor.dart';
import 'package:shortpaper2_flutter/server/repositorio/abstract_doctores_request.dart';

class EstadoDoctor with ChangeNotifier {
  List<Doctor> _doctores = [];
  final BusquedaGenerica<Doctor, String> request;

  EstadoDoctor({required this.request});

  List<Doctor> get doctores {
    return [..._doctores];
  }

  Future<void> obtenerDoctoresDesdeApi() async {
    try {
      _doctores = await request.obtenerData();
      notifyListeners();
    } catch (e) {
      throw Exception('Algo salió mal');
    }
  }

  Future<void> obtenerDoctoresConFiltro(String filtro) async {
    try {
      if (filtro.trim() != '') {
        _doctores = await request.obtenerDataFiltrada(filtro);
      } else {
        _doctores = await request.obtenerData();
      }

      notifyListeners();
    } catch (e) {
      throw Exception('Algo salió mal');
    }
  }
}
