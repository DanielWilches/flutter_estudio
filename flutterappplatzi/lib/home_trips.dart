import 'package:flutter/material.dart';
import 'package:flutterappplatzi/descripcion_place.dart';
import 'package:flutterappplatzi/header_appbar.dart';
import 'package:flutterappplatzi/review_list.dart';

class HomeTrips extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        String _descriptionDummy ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at tincidunt nisl. Aenean molestie facilisis sapien porta accumsan. Sed et eros feugiat, congue ante vitae, scelerisque est.  Quisque at tincidunt nisl. Aenean molestie facilisis sapien porta accumsan. Sed et eros feugiat, congue ante vitae, scelerisque est.";
        final home =Stack(
            children: [
                ListView(
                    children: [
                        SizedBox(
                            width: double.infinity,
                            child:  Column(
                                children: [
                                    DescripcionPlace(_descriptionDummy, "Daniel Prieto", 4),
                                    ReviewsList()
                                ],
                            ),
                        ),
                    ],
                ),
                HeaderAppbar()
            ],
        );
        return home;
    }
}