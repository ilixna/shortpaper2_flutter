import 'package:shortpaper2_flutter/modelo//especialidad.dart';
import 'package:shortpaper2_flutter/modelo/genero.dart';

class Doctor {
  final int id;
  final String nombre;
  final String apellido;
  final String imagen ;
  final Genero genero;
  final List<Especialidad> especialidades;
  Doctor({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.genero,
    required this.especialidades,
  });

  factory Doctor.fromJson(Map<String, dynamic> json){
    return Doctor(
        id: json['id'],
        nombre: json['nombre'],
        apellido: json['apellido'],
        imagen: json['imagen'],
        genero: Genero(
            id: json['genero']['id'],
            genero: json['genero']['Genero']
        ),
        especialidades: json['categories'].map<Especialidad>((e)=> Especialidad.fromJson(e)).toList()
    );
  }


}