import 'package:flutter/material.dart';


class AccountProfile extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        final _accountProfile= Container(
            width: 400,
            margin: EdgeInsets.only(
                top:140.0,
                left: 20.0,
                bottom: 10
            ),
            constraints: BoxConstraints(
                maxWidth: 767,
                minWidth: 320
            ),
            child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                    Container(
                        width: 80.0,
                        height: 80.0,
                        margin: EdgeInsets.only(
                            right: 10
                        ),
                        decoration:  BoxDecoration(
                            shape:  BoxShape.circle,
                            border:  Border.all(width: 2 , color: Colors.white  ),
                            image:  DecorationImage(
                                fit:  BoxFit.cover,
                                image: AssetImage('assets/img/foto.jpg')
                            )
                        ),
                    ),
                    Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Daniel Prieto',
                                textAlign: TextAlign.left,
                                style:  TextStyle(
                                    fontSize: 25,
                                    color:  Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'lato',
                                ),
                            ),
                            SizedBox(
                                height: 5,
                            ),
                            Text('danielprietowilches@gmail.com',
                                textAlign:  TextAlign.start,
                                style:  TextStyle(
                                    fontFamily: 'lato',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white60
                                ),
                            )
                        ],
                    )
                ],
            ),
        );

        return _accountProfile;
    }
}