import 'package:flutter/material.dart';
import 'package:taller/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Text('Login'),
        backgroundColor: Color(0xFF93A5E2),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.app_registration),
            onPressed: () {
              Navigator.of(context).pushNamed('/register');
            },
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 5, 30),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.amberAccent),
          width: 767,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextFormField(
                    obscureText: false,
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Usuario',
                      labelText: 'Nombre de usuario',
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      fillColor: Colors.yellow,
                      hoverColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña',
                      labelText: 'Cotraseña',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      fillColor: Colors.white70,
                      hoverColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      child: Text('Ingresar'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
