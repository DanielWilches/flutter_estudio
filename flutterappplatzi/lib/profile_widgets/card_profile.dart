import 'package:flutter/material.dart';
import 'package:flutterappplatzi/floating_action.dart';
import 'package:flutterappplatzi/profile_widgets/card_image.dart';
import 'package:flutterappplatzi/profile_widgets/sub_card_ubicacion.dart';

class CardProfile extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final cardProfile= Stack(
            alignment: Alignment.bottomCenter,
            children: [
                CardImage(),
                Stack(
                alignment:  Alignment.bottomRight,
                    children: [
                        SubCardUbicacion(),
                        FloatingAction()
                    ],
                )
            ],
        );
        return cardProfile;
    }
}

