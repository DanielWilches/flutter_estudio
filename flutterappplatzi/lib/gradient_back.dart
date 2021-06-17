import 'package:flutter/material.dart';


// ignore: must_be_immutable
class GradientBack extends StatelessWidget {
    String title = "popular";
    double altura  = 250.0;
    GradientBack (this.title, this.altura );
    @override
    Widget build(BuildContext context) {
        final gradient =  Container(
            height: altura,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                        Color(0xFF4268D3),
                        Color(0xFF584CD1)
                    ],
                    begin: FractionalOffset(0.4,00),
                    end:  FractionalOffset (1.0, 0.6),
                    stops: [0.0, 0.6],
                    tileMode:  TileMode.clamp
                )
            ),
            child:  Text( title,
                style:  TextStyle(
                    color:  Colors.white,
                    fontSize: 30.0,
                    fontFamily: ' lato',
                    fontWeight: FontWeight.w700
                )
                
            ),
            alignment:  Alignment(-0.9, -0.6),
        );
        return gradient;
    }
}