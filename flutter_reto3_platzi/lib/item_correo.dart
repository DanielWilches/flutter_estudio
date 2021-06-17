import 'package:flutter/material.dart';

class ItemCorreo extends StatelessWidget {
    String  image = 'assets/imgs/girl.jpeg';
    String nombre ="pepeo peres";
    String comment = "Lorem ipsum dolor sit amet";
    ItemCorreo(this.image, this.nombre, this.comment);
    @override
    Widget build(BuildContext context) {

        final account =  Container(
            width: 70.0,
            height: 70.0,
            margin:  EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
                bottom: 10.0
            ),
            decoration:  BoxDecoration(
                shape:  BoxShape.circle,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage(image)
                )
            ),
        );

        final detail = Column(
            crossAxisAlignment:  CrossAxisAlignment.start, 
            children: <Widget> [
                Container(
                    margin:  EdgeInsets.only(
                        top: 5.0,
                        bottom:  5.0
                    ),
                    child:Text(nombre,
                        textAlign: TextAlign.start,
                        style:  TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color:  Colors.black
                        ),
                    ) ,
                ),
                Container(
                    margin:  EdgeInsets.only(
                        top: 5.0,
                        bottom:  5.0
                    ),
                    child:Text(comment,
                        textAlign: TextAlign.start,
                        style:  TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color:  Colors.black38
                        ),
                    ) ,
                )
            ],
        );

        final email =  InkWell(
            onTap: () {
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(
                    SnackBar(
                        content:  Text('email leeido'),
                    )
                );
            },
            child: Container(
                margin:  EdgeInsets.only(
                    right:  20.0,
                ),
                width:  50.0,
                height: 50.0,
                decoration:  BoxDecoration(
                    color:  Colors.redAccent,
                    shape:  BoxShape.circle,
                ),
                child:  Icon(
                    Icons.email,
                    color:  Colors.white,
                ),
            )
        );

        final itemC = Container(
            decoration:  BoxDecoration(
                border:  Border(
                    bottom: BorderSide( width: 0.5, color:  Colors.black26)
                )
            ),
            child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment:  CrossAxisAlignment.center,
                children: [
                    account,
                    detail,
                    email
                ],
            )
        );
        
        return itemC;
    }
}