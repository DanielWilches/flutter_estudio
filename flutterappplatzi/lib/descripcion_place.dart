import 'package:flutter/material.dart';
import 'package:flutterappplatzi/buttoninwelk.dart';
import 'package:flutterappplatzi/starts.dart';

// ignore: must_be_immutable
class DescripcionPlace extends StatelessWidget {
    /*¿ que funcion cumple este const ?*/
    String _namePlace;
    String _descriptionPlace;
    int starts;

    // constructor
    DescripcionPlace (this._descriptionPlace,  this._namePlace, this.starts);
    
    @override
    Widget build(BuildContext context) {
        final descripcionText = Container(
            margin:  EdgeInsets.only(
                top: 10.0,
                left: 22.0,
                right: 22.0,
                bottom: 20
            ),
            child:  Text( _descriptionPlace,
                style:  TextStyle(
                    fontFamily: "Lato",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xFF56575a)
                ),
            ),
        );

        final titleStarts =Row(
            children: [
                Container(
                    margin:  EdgeInsets.fromLTRB(20.0, 330.0, 20.0, 5),
                    child: Text(_namePlace,
                        textAlign: TextAlign.left,
                        style:  TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Lator",
                            fontWeight: FontWeight.w900
                        ),
                    ),
                ),
                new Starts(330.0,0)
            ],
        );
        return Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
            children: <Widget>[
                titleStarts, 
                descripcionText,
                ButtonInwelck('Navegacion')
            ],
        );
    }
}