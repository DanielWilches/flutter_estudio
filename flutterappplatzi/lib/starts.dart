import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Starts extends StatelessWidget {
    double mBottom;
    double mtop;
    Starts (this.mtop, this.mBottom);
    @override
    Widget build(BuildContext context) {
        final startHalf  = Container(
            margin:  EdgeInsets.only(
                top: mtop,
                bottom: mBottom,
                right: 3.0
            ),
            child:  Icon(
                Icons.star_half,
                color: Color(0xFFf2C611),
            ),
        );

        final startBorder = Container(
            margin:  EdgeInsets.only(
                top: mtop,
                bottom: mBottom,
                right: 3.0
            ),
            child:  Icon(
                Icons.star_border,
                color: Color(0xFFf2C611),
            ),
        );

        final start = Container(
            margin:  EdgeInsets.only(
                top: mtop,
                bottom: mBottom,
                right: 3.0
            ),
            child:  Icon(
                Icons.star,
                color: Color(0xFFf2C611),
            ),
        );

        return  Row(
            children: [
                start,
                start,
                startHalf,
                startBorder
            ],
        );
    }
}