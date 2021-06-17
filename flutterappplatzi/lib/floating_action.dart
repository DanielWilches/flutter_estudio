import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class FloatingAction extends StatefulWidget {
    @override
    _FloatingActionState createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
    bool pressed = false;
    String colorGren = '0xFF11DA53';
    String colorRed = '0xFFDB2653';
    void _onpressedFav (){
        setState(() {
            pressed = !pressed; 
        });
        print(pressed);
    }
    @override
    Widget build(BuildContext context) {

        return FloatingActionButton(
            onPressed:  _onpressedFav,
            backgroundColor: Color(  this.pressed ? 0xFF11DA53:  0xFFDB2653 ),
            mini:  true,
            tooltip: this.pressed?  "Eleminar favorito" :  "Agregar Favorito" ,
            child:  Icon(
                this.pressed ? Icons.favorite : Icons.favorite_border
            ),
        );
    }
}