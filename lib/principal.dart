import 'package:flutter/material.dart';

List<Map> empleados = [
  {
    "ide": "8710331",
    "nombre": "Fredy",
    "apellido": "hernandez",
    "telefono": "3172464503",
    "foto": "url a colocar",
  },
  {
    "ide": "234",
    "nombre": "Claudia",
    "apellido": "mejia",
    "telefono": "1234",
    "foto": "url a colocar",
  },
  {
    "ide": "345",
    "nombre": "pedro",
    "apellido": "perez",
    "telefono": "4567",
    "foto": "https://attic.sh/ipi64p6p5s8t7x9diwsx13pldkuz ",
  },
  {
    "ide": "456",
    "nombre": "Lucy",
    "apellido": "Vallejo",
    "telefono": "789",
    "foto": " url a colocar",
  },
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
        body: ListView.separated(
          itemCount: empleados.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                empleados[index]["nombre"] + " " + empleados[index]["apellido"],
              ),
              subtitle: Text("C.c. " + empleados[index]["ide"]),
              trailing: Text("Tel " + empleados[index]["telefono"]),
              leading: Image(image: NetworkImage(empleados[index]["foto"])),
            );
          },
        ),
      ),
    );
  }
}
