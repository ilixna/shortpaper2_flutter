import 'package:flutter/material.dart';
import 'package:shortpaper2_flutter/pantalla/lista_doctores.dart';
import 'package:shortpaper2_flutter/estado/doctores_estado.dart';
import 'package:provider/provider.dart';
import 'package:shortpaper2_flutter/server/repositorio/doctores_request.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> EstadoDoctor(request: DoctoresRequest()))
        ],
      child: const MyApp()
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyOnlineDoctor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
      home: const ListaDoctores(),
    );
  }
}

