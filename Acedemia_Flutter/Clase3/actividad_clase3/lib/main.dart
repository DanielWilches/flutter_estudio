/* import 'dart:ui'; */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scambio = true;

    final app = (MaterialApp(
/*         key: _Scaffey, */
        title: 'actividad en classe',
        home: Scaffold(
            appBar: AppBar(
              title: Text('actividad de la clase 3'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            body: ListView(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            width: 200,
                            height: 200,
                            child: Image.network(
                              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8196ba0f-98f1-447c-96b9-4382e205dd6c/d6mmvio-30742b1a-dd11-4f97-9dc3-8fdd15f47a03.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzgxOTZiYTBmLTk4ZjEtNDQ3Yy05NmI5LTQzODJlMjA1ZGQ2Y1wvZDZtbXZpby0zMDc0MmIxYS1kZDExLTRmOTctOWRjMy04ZmRkMTVmNDdhMDMuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.7pUTTsc0OmWJLwpLjgrd9-bF78W_LFAssZyL_SQRcDQ",
                              width: 200,
                              height: 100,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 300,
                                child: Title(
                                  color: Colors.black,
                                  child: Text(
                                    'Titulo 2',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tellus arcu, dignissim sit amet ligula in',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              )
                            ],
                          ),
                          Container(
                            child: Switch(
                                value: scambio,
                                onChanged: (value) {
                                  value = !value;
                                }),
                            /* Switch(value: scambio, onChanged: _cambio(scambio)), */
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Text(
                              'prueba de tipografia',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "pruebafont"),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Text(
                              'Colores en flutter',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Center(
                            child: Container(
                              color: Colors.blue,
                              height: 200,
                              width: 200,
                              margin: const EdgeInsets.only(bottom: 20),
                            ),
                          ),
                          Center(
                            child: Container(
                              color: Color(0xff2E4E69),
                              height: 200,
                              width: 200,
                              margin: const EdgeInsets.only(bottom: 20),
                            ),
                          ),
                          Center(
                            child: Container(
                              color: Color(0xff2E4E69).withOpacity(0.1),
                              height: 200,
                              width: 200,
                              margin: const EdgeInsets.only(bottom: 20),
                            ),
                          ),
                          Center(
                            child: Container(
                              color: Color.fromRGBO(30, 169, 30, .5),
                              height: 200,
                              width: 200,
                              margin: const EdgeInsets.only(bottom: 20),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'texto combertido en boton',
                                style: TextStyle(
                                    fontSize: 35, color: Colors.black),
                              ),
                              //perite crear  un texto en boton
                              Container(
                                margin: const EdgeInsets.all(20),
                                padding: EdgeInsets.all(20),
                                color: Colors.blueAccent,
                                child: GestureDetector(
                                    onTap: _ontap,
                                    onLongPress: _onLongPress,
                                    child: Text(
                                      'hola ingenieros',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    )),
                              ),
                              Column(
                                children: [
                                  Text('botones flutter'),
                                  Container(
                                    child: RaisedButton(
                                        onPressed: _riesebtn,
                                        color: Colors.amber,
                                        child: Text('boton raised')),
                                  ),
                                  Container(
                                    child: FlatButton(
                                        onPressed: _flarbtn,
                                        child: Text('flat buton')),
                                  )
                                ],
                              ),
                              Container(
                                child: Text('prueba de on un drawer'),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            drawer: _getDrawer(context),
            floatingActionButton: FloatingActionButton(
              onPressed: _onfloat,
              child: Icon(Icons.menu),
            )
            // asi se crear un tap lateral
            )));
    return app;
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: <Widget>[
                FlutterLogo(
                  size: 100,
                ),
                Text('primer Drawer')
              ],
            ),
          ),
          ListTile(
            title: Text('incio'),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }

  void _ontap() {
    print('hola daniel');
  }

  void _onLongPress() {
    print('hola  ingeniero daniel');
  }

  void _riesebtn() {
    print('rise bton');
  }

  void _flarbtn() {
    print('flat button');
  }

  void _onfloat() {
    print('float');
/*     SnackBar snackBar = SnackBar(
      content: Text('exito'),
      action: SnackBarAction(
        label: "cancelar",
        onPressed: () {
          print('cancelar');
        },
      ),
    );
    _ScaffKey.currentState._onfloat(snackBar);
  } */
  }
}
