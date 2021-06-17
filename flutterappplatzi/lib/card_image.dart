import 'package:flutter/material.dart';
import 'package:flutterappplatzi/floating_action.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
    @override
    // ignore: override_on_non_overriding_member
    String pathImage= "assets/img/beach.jpeg";
    CardImage(this.pathImage);
    Widget build(BuildContext context) {
        final cardImage = Container(
            height: 350.0,
            width: 250.0,
            margin:  EdgeInsets.only(
                top: 80.0,
                left: 20.0
            ),
            decoration:  BoxDecoration(
                image:  DecorationImage(
                    fit:  BoxFit.cover,
                    image:  AssetImage(pathImage)
                ),
                borderRadius:  BorderRadius.all(Radius.circular(10.0)),
                shape:  BoxShape.rectangle,
                boxShadow:  <BoxShadow>[
                    BoxShadow(
                        color:  Colors.black38,
                        blurRadius: 15.0,
                        offset:  Offset(0.0, 7.0)
                    )
                ]
            ),
        );
        return  Stack(
            alignment:  Alignment(0.9,1.2),
            children: [
                cardImage,
                FloatingAction()
            ],
        );
    }
}
