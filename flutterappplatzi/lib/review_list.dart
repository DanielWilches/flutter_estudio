import 'package:flutter/material.dart';
import 'package:flutterappplatzi/review.dart';

// ignore: must_be_immutable
class ReviewsList extends StatelessWidget {
        List usuarios =[
        {
            'image': 'foto.jpg',
            'nombre': 'daniel prieto',
            'details': '1 review 5 photos',
            'comment': 'Lorem ipsum dolor sit amet'
        },
        {
            'image': 'foto.jpg',
            'nombre': 'daniel prieto',
            'details': '1 review 5 photos',
            'comment': 'Lorem ipsum dolor sit amet'
        },

        {
            'image': 'foto.jpg',
            'nombre': 'daniel prieto',
            'details': '1 review 5 photos',
            'comment': 'Lorem ipsum dolor sit amet'
        },
    ];

    @override
    Widget build(BuildContext context) {
        final list =  Container(
            margin: EdgeInsets.only(
                left: 2.0,
                right: 2.0,
                bottom: 15.0
            ),
            child:  Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: <Widget> [   
                    Container(
                        margin: EdgeInsets.only(
                            left: 20.0, 
                            bottom: 5.0
                        ),
                        child:  Text('All Reviews',
                            textAlign:  TextAlign.start,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily:  'lato', 
                                fontWeight:  FontWeight.w700,
                                color: Color(0xFFa3a5a7)
                            ),
                        ),
                    ),
                    Review('assets/img/foto.jpg', 'daniel prieto', '1 review 5 photos', 'Lorem ipsum dolor sit amet'),
                    Review('assets/img/foto2.jpg', 'pepito perez', '4 review 2 photos', 'Lorem ipsum dolor sit amet'),
                    Review('assets/img/foto3.jpeg', 'juana  gutierres', '2 review 6 photos', 'Lorem ipsum dolor sit amet'),
                ],
            ),
        );
        return list ;
    }
}