import 'package:flutter/material.dart';
import 'package:flutterappplatzi/card_image.dart';

class CardImageList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        final cardImage  = Container(
            height: 350.0,
            child:  ListView(
                padding:  EdgeInsets.all(25.0),
                // acomoda los elementos de forma horizontal
                scrollDirection:  Axis.horizontal,
                children:  <Widget>[
                    CardImage('assets/img/beach.jpeg'),
                    CardImage('assets/img/beach_palm.jpeg'),
                    CardImage('assets/img/foto.jpg'),
                    CardImage('assets/img/mountain.jpeg'),
                    CardImage('assets/img/mountain_stars.jpeg'),
                    CardImage('assets/img/sunset.jpeg'),
                ],
            ),
        ) ;


        return cardImage;
    }
}