import 'package:flutter/material.dart';
import 'package:flutterappplatzi/platzi_trips.dart';


void main() {
    runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        final myapp = MaterialApp(
            title: 'platzi app',
            home: PlatziTrips()
        );
        return myapp;
    }
}
