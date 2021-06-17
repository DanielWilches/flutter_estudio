import 'package:flutter/material.dart';
import 'package:flutterappplatzi/home_trips.dart';
import 'package:flutterappplatzi/profile_widgets/proflle_trips.dart';
import 'package:flutterappplatzi/search.dart';

class PlatziTrips extends StatefulWidget {
    @override
    _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
    @override
    // arreglo de screens 
    final List <Widget> widgetsChildren = [
        HomeTrips(),
        Search(),
        ProfileTrips()
    ];
    int indexTap =0;
    void onTapTapped ( int index ) { 
        setState(() {
            indexTap = index;
        });
    }
    Widget build(BuildContext context) {
        final appPlatzi = Scaffold(
            body:   widgetsChildren[indexTap],
            bottomNavigationBar: Theme( 
                data:  ThemeData(
                    canvasColor: Colors.white,
                    primaryColor:  Colors.purple
                ),
                child: BottomNavigationBar(
                    onTap: onTapTapped,
                    currentIndex:  indexTap,
                    // oculta los titulos de los botonoes
                    showSelectedLabels: false,
                    showUnselectedLabels:  false,
                    items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: ""
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search),
                            label: ""
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person),
                            label: ""
                        )
                    ],
                )
            ),
        );
        return appPlatzi;
    }
}