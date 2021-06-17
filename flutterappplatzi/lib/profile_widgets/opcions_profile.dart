import 'package:flutter/material.dart';
import 'package:flutterappplatzi/profile_widgets/opcion_profile.dart';

class OpcionsProfile extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        final _opcionsProfile = Container(
            margin:  EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
                bottom: 10,
            ),
            padding: EdgeInsets.only(
                bottom: 20.0
            ),
            constraints:  BoxConstraints(
                maxWidth: 767,
                minWidth: 350
            ),
            child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize:  MainAxisSize.max,
                children: [
                    OpcionProfile(50.0,50.0, Icons.insert_comment,Colors.white30),
                    OpcionProfile(50.0,50.0, Icons.access_alarm,Colors.white30),
                    OpcionProfile(70.0,70.0, Icons.add,Colors.white),
                    OpcionProfile(50.0,50.0, Icons.email,Colors.white30),
                    OpcionProfile(50.0,50.0, Icons.person_rounded,Colors.white30)
                ],
            ),


        ) ;

        return _opcionsProfile;
    }
}



