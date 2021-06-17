import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi primera app de fluuter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('mi biografia en flutter,'),
          ),
          body: Column(
            children: [
              Container(
                width: 500.0,
                margin: EdgeInsets.all(20),
                child: Image.asset('assets/images/foto.jpg'),
              ),
              Title(color: Colors.amber, child: Text('hola soy daniel'))
            ],
          )),
    );
  }
}
//    contextocompilado    contexto
