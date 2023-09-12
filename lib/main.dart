// Creado por: Uriel Maldonado Cortez
// Asignatura: Desarrollo Movil Integral
//Grado: 10   Grupo: "A"
// Docente: MTI. Marco Antonio Ramirez Hernandez
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isIconHeart = true; // Variable de estado para controlar el icono

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 228, 61, 10),
          title: Text("Uriel Maldonado Cortez"),
        ),
        body: Center(
          child: Text("Uriel Maldonado Cortez 200931"),
        ),
        floatingActionButton: SizedBox(
          width: 120.0, // Ancho deseado
          height: 120.0, // Alto deseado
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                // Cambiar el estado del icono al hacer clic
                isIconHeart = !isIconHeart;
                print('Hizo clic');
              });
            },
            child: isIconHeart
                ? Image.asset('assets/R.png', width: 150, height: 150)
                : Icon(
                    Icons.favorite_border, // Icono cuando isIconHeart es false
                  ),
          ),
        ),
      ),
    );
  }
}
