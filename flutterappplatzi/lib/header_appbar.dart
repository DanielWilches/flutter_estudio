import 'package:flutter/material.dart';
import 'package:flutterappplatzi/card_imagen_list.dart';
import 'package:flutterappplatzi/gradient_back.dart';


class HeaderAppbar extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        final headerAppbar = Stack(
            children: [
                GradientBack('Popúlar', 250.0),
                CardImageList(),
                
            ],
        );
        return headerAppbar;
    }
}