import 'package:flutter/material.dart';
import 'package:flutter_reto3_platzi/custom_cliper.dart';
import 'package:flutter_reto3_platzi/item_correo.dart';



void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final app = MaterialApp(
        debugShowCheckedModeBanner: false, 
            home: Scaffold(
                body: SizedBox(
                    width:  double.infinity,
                    height: double.infinity,
                    child:  ListView(
                        children: [
                            ItemCorreo('assets/imgs/girl.jpeg','juana gutierres','Lorem ipsum dolor sit ame'),
                            ItemCorreo('assets/imgs/donald.jpg','frank solano','Lorem ipsum dolor sit ame'),
                            ItemCorreo('assets/imgs/Rock.jpg','juancho perez','Lorem ipsum dolor sit ame'),
                            ItemCorreo('assets/imgs/selena.jpg','carolina garzon','Lorem ipsum dolor sit ame'),
                            ItemCorreo('assets/imgs/Woman.jpg','carol cierra','Lorem ipsum dolor sit ame'),
                            Padding(
                                padding:  EdgeInsets.all(30),
                                child:  ClipPath(
                                    child: Container(
                                        width: double.infinity,
                                        height: 100,
                                        color: Colors.blue[600],
                                    ),
                                    clipper: CustomCLiperClipper()
                                ),
                            )


                        ],
                    ),
                ),


            ),
        );
        return app;
    }
}

