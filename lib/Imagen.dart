import 'package:flutter/material.dart';

class Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagen de prueba'),
      ),
      body: Center(
        child: TextButton(
          child: Image.asset(
              'assets/images/galaxia.jpg'
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/vista');
          },
        ),
      ),
    );
  }
}
