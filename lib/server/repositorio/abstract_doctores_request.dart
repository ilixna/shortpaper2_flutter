import 'package:shortpaper2_flutter/modelo/doctor.dart';

abstract class BusquedaGenerica<T, S > {
  Future<List<T>> obtenerData();
  Future<List<T>> obtenerDataFiltrada(S filtro);
}