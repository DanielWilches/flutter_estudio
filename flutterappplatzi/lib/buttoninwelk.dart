import 'package:flutter/material.dart';

class ButtonInwelck extends StatelessWidget {
    String buttoName = 'ubicacion';
    ButtonInwelck(this.buttoName);
    @override
    Widget build(BuildContext context) {

        final button = InkWell(
            onTap: () {
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(
                    SnackBar(
                        content:  Text('navegando'),
                    )
                );
            },
            child: Container(
                margin:  EdgeInsets.only(
                    top: 30.0,
                    left: 20.0,
                    right:  20.0,
                    bottom: 10.0

                ),
                width: 180.0,
                height: 50.0,
                decoration:  BoxDecoration(
                    borderRadius:  BorderRadius.circular(30.0),
                    gradient:  LinearGradient(
                        colors: [
                            Color(0xFF4268D3),
                            Color(0xFF584CD1)
                        ],
                        begin: FractionalOffset(0.2, 0.0),
                        end: FractionalOffset (1.0, 0.6),
                        stops: [0.0, 0.6],
                        tileMode: TileMode.clamp
                    )
                ),
                child:  Center(
                    child:  Text(buttoName,
                        style: TextStyle(
                            fontFamily:  'lato',
                            fontSize: 18,
                            color: Colors.white
                        ),
                    ),
                )
            )
        );
        return  button;
    }
}