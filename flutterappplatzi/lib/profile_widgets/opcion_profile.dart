import 'package:flutter/material.dart';



// ignore: must_be_immutable
class OpcionProfile extends StatelessWidget {
    double ancho= 0;
    double altura = 0;
    var  icon=  Icons.access_alarm;
    var color = Colors.white30;
 /*    String color = 'Icons.access_alarm'; */
    OpcionProfile(this.ancho, this.altura, this.icon, this.color);
    @override
    Widget build(BuildContext context) {
        final opcionProfile =  Container(
            width: ancho,
            height: altura,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(50) ,
                color:  color
            ),
            child:  Icon( 
                icon,
                size: 30,
                color: Color(0xFF4268D3),
            ),
        );

        return opcionProfile;
    }
}