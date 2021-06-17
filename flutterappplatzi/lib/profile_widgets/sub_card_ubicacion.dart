import 'package:flutter/material.dart';

class SubCardUbicacion extends StatelessWidget {
    var  textstyle =TextStyle(
        color: Colors.amber[800],
        fontFamily: 'lato',
        fontSize: 16.0,
        fontWeight: FontWeight.w400
    );
    @override
    Widget build(BuildContext context) {

        final subCard =  Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            constraints:  BoxConstraints(
                maxWidth: 300.0,
                minHeight: 100.0
            ),
            decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius:  BorderRadius.circular(15.0)
            ),
            child: Column(
                crossAxisAlignment:  CrossAxisAlignment.stretch,
                mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                    Text('Nombre de la ubicacion',
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'lato',
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    SizedBox(
                        height: 5,
                    ),
                    Text('Lorem ipsum dolor sit amet',
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'lato',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black38
                        ),
                    ),
                    Text('Lorem ipsum dolor ',
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'lato',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black38
                        )
                    ),
                    SizedBox(
                        height: 5,
                    ),
                    Row(
                        children: [
                            Text('steps',
                                style:  textstyle
                            ),
                            SizedBox(
                                width: 10,
                            ),
                            Text('123,123,123',
                                style: textstyle
                            )
                        ],
                    )
                ],
            ),
        );

        return  subCard;
    }
}