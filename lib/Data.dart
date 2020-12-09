import 'package:flutter/material.dart';

class Data extends StatelessWidget {

  String name, nickName;
  Data(this.name, this.nickName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portada"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Hola $name, tambien conocido como $nickName'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Volver'),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Text('Ver imagen'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/imagen');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
