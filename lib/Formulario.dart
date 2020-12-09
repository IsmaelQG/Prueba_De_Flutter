import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {

  String name;
  Formulario(this.name);

  @override
  _FormularioState createState() => _FormularioState(name);
}

class _FormularioState extends State<Formulario> {
  
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameCtrl = TextEditingController();

  String name;
  _FormularioState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portada"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(child: Text(name),
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
            TextFormField(
              controller: _nameCtrl,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Nombre',
                labelText: 'Introduce tu nombre',
              ),
              keyboardType: TextInputType.name,
              validator: (v){
                if(v.isEmpty){
                  return 'Nope, vacio no';
                }
                return null;
              },
              onSaved: (newValue){
                print('jajaja');
              },
            ),
            ElevatedButton(
              child: Text('Send'),
              onPressed: (){
                if(_formKey.currentState.validate()){
                  Navigator.pushNamed(context, '/data/$name/${_nameCtrl.text}');
                }
              },
            ),
          ],
        ),
        
      ),
    );
  }
}
