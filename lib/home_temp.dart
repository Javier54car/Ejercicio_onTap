
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Valor1',
    'Valor2',
    'Valor3',
    'Valor4',
    'Valor5',
    'Valor6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(children: _crearWidgets()),
  
    ); 
  }
  List<Widget> _crearWidgets() {
    List<Widget> lista = new List<Widget>();
    for (String valor in opciones) {
      final tempWidget = ListTile(
        title: Text(valor),
        subtitle: Text('Subtitulo del ' +valor),
        leading: Icon(Icons.account_box_rounded),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
       onTap: (){
            print('Se dio click en el ' + valor);
           },
      );
      
      lista..add(tempWidget)..add(Divider());

      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
    
    }
}