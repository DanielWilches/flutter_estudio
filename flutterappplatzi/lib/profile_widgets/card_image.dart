import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        final cardimage= Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(
                top:20.0,
                left: 20.0,
                right:  20.0,
                bottom: 20.0
            ),
            constraints: BoxConstraints(
                maxWidth: 767,
                maxHeight: 225.0
            ),
            decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 15.0,
                        color: Colors.black26,
                        offset: Offset(0.0, 1.8)
                    )
                ],
                image:  DecorationImage(
                    fit:  BoxFit.cover,
                    image: AssetImage('assets/img/mountain.jpeg')
                )
            ),
        );
        return  cardimage;
    }
}