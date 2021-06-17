import 'package:flutter/material.dart';
import 'package:flutterappplatzi/starts.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
    String pathImage;
    String name;
    String details;
    String comment;
    Review(this.pathImage, this.name, this.details, this.comment);
    @override
    Widget build(BuildContext context) {

        final userComment= Container(
            margin:  EdgeInsets.only(
                left:  20.0,
                bottom: 5.0
            ),
            child: Text(comment ,
                textAlign:  TextAlign.left,
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                    fontFamily:  "Lato",
                    color: Color(0xFFa3a5a7)
                ),
            ),
        );

        final userInfo =  Row(
            crossAxisAlignment:  CrossAxisAlignment.center,
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
                Container(
                    margin:  EdgeInsets.only(
                        left: 20.0 ,
                        bottom: 5.0
                    ),
                    child:    Text(details,
                        textAlign:  TextAlign.left,
                        style:  TextStyle(
                            fontSize: 13.0,
                            fontFamily:  "Lato",
                            color: Color(0xFFa3a5a7)
                        ),
                    ),
                ),
                Starts(0,5.0)
            ],
        );

        final userName = Container(
            margin:  EdgeInsets.only(
                left: 20.0,
                bottom: 5.0
            ),
            child:  Text(name,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily:  "Lato",
                    fontSize: 17.0
                ),
            ),
        );

        final  userDetail = Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: <Widget> [
                userName,
                userInfo,
                userComment

            ],
        );

        final   photo= Container(
            width: 80.0,
            height: 80.0,
            margin:  EdgeInsets.only(
                top: 10.0,
                left: 20.0
            ),
            decoration: BoxDecoration(
                shape:  BoxShape.circle,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage(pathImage)
                )
            ),
        );

        return Row (
            children:<Widget> [
                photo,
                userDetail

            ],
        );
    }
}
