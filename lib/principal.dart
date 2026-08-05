import 'package:flutter/material.dart';

List<Map> empleados = [
  {
    "ide": "8710331",
    "nombre": "Fredy",
    "apellido": "hernandez",
    "telefono": "3172464503",
  },
  {"ide": "234", "nombre": "Claudia", "apellido": "mejia", "telefono": "1234"},
  {"ide": "345", "nombre": "pedro", "apellido": "perez", "telefono": "4567"},
  {"ide": "456", "nombre": "Lucy", "apellido": "Vallejo", "telefono": "789"},
];

class Principal extends StatelessWidget {
  const Principal();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("empleados"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
