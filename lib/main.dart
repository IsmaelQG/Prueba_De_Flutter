import 'package:flutter/material.dart';
import 'package:flutter_prueba/Data.dart';

import 'Formulario.dart';
import 'Imagen.dart';
import 'UserData.dart';
import 'Vista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings){
        if(settings.name == "/"){
          return MaterialPageRoute(builder: (context) => Portada());
        }
        var uri = Uri.parse(settings.name);
        if(uri.pathSegments.first == 'data'){
          return MaterialPageRoute(builder: (context) => Data(uri.pathSegments[1],uri.pathSegments[2]));
        }
        if(uri.pathSegments.first == 'form'){
          return MaterialPageRoute(builder: (context) => Formulario(uri.pathSegments.last));
        }
        if(uri.pathSegments.first == 'imagen'){
          return MaterialPageRoute(builder: (context) => Imagen());
        }
        if(uri.pathSegments.first == 'vista'){
          return MaterialPageRoute(builder: (context) => Vista());
        }
        return MaterialPageRoute(builder: (context) => null);
      }
    );
  }
}

class Portada extends StatefulWidget {
  @override
  _PortadaState createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {

  UserCreator users = UserCreator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portada"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: users.getUsers(),
      ),
    );
  }
}
