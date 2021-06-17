import 'package:flutter/material.dart';
import 'package:flutterappplatzi/gradient_back.dart';
import 'package:flutterappplatzi/profile_widgets/account_profile.dart';
import 'package:flutterappplatzi/profile_widgets/card_profile.dart';
import 'package:flutterappplatzi/profile_widgets/opcions_profile.dart';

class ProfileTrips extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        final profile =  Stack(
            children: [
                GradientBack('profile', 450.0),
                Stack(
                    children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 300.0
                            ),
                            child: ListView(
                                children: [
                                    CardProfile(),
                                    CardProfile(),
                                    CardProfile(),
                                    CardProfile(),
                                ],
                            ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: Column(
                                children: [
                                    AccountProfile(),
                                    OpcionsProfile(),
                                ],
                            ),
                        ),
                    ],
                ),
            ],
        );
        
        

        return profile;
    }
}

/* Stack(
            children: [
                GradientBack('profile', 450.0),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                        children: [
                            AccountProfile(),
                            OpcionsProfile(),

                        ],
                    ),
                ),
            ]
            ) */