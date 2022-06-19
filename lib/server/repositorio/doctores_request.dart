import 'dart:convert';
import 'package:shortpaper2_flutter/modelo/doctor.dart';
import 'package:shortpaper2_flutter/server/repositorio/abstract_doctores_request.dart';
import 'package:http/http.dart' as http;

class DoctoresRequest implements BusquedaGenerica<Doctor, String> {
  @override
  String url = 'http://10.0.2.2:3000';

  Future<List<Doctor>> obtenerData() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final apiUrl = Uri.parse(url + "/doctor/todos");
      final response = await http.get(apiUrl).timeout(const Duration(seconds: 15));
      final datosAExtraer = jsonDecode(response.body)['body'];
      final doctores = datosAExtraer.map<Doctor>((e) => Doctor.fromJson(e)).toList();
      return doctores;

    }catch (e) {
      print(e);
      throw Exception('Algo salió mal');
    }
  }

  @override
  Future<List<Doctor>> obtenerDataFiltrada(String filtro) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final apiUrl = Uri.parse(url + "/doctor?nombre="+filtro);
      final response = await http.get(apiUrl).timeout(const Duration(seconds: 15));
      final datosAExtraer = jsonDecode(response.body)['body'];
      final doctores = datosAExtraer.map<Doctor>((e) => Doctor.fromJson(e)).toList();
      return doctores;

    }catch (e) {
      print(e);
      throw Exception('Algo salió mal');
    }
  }

}