import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Biografia',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Biografia'),
              //agrega acciones a nuestra barra
              actions: <Widget>[
                IconButton(icon: Icon(Icons.add), onPressed: _add),
              ],
              // agrega estilos a la barra
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              // botones para la barra del lado izquierdo
              leading: IconButton(icon: Icon(Icons.remove), onPressed: _remove),
            ),
            // una columna tiene un limite y no tiene scroll
            body: SizedBox(
              // con este widget puedes utlizar  en ancho total del widget  con la propiedad que esta abajo
              width: double.infinity,
              child: Column(
                // justifycontent
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // aling items
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //equivalente al div
                  Container(
                    color: Colors.cyan,
                    height: 100,
                    width: 100,
                  ),
                  Text('hola ingenieros'),
                  Image.network(
                    "https://media.giphy.com/media/TIRlx3Fzi1A7L2d5z7/giphy.gif",
                    width: 300,
                    height: 300,
                  ),
                  Row(
                    children: <Widget>[
                      Text('activar notificacion'),
                      Switch(value: true, onChanged: (value) {})
                    ],
                  )
                ],
              ),
            )));
  }

  void _add() {
    print('agrega');
  }

  void _remove() {
    print('remove');
  }
}
