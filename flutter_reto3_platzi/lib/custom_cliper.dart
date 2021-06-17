import 'package:flutter/material.dart';



class CustomCLiperClipper extends CustomClipper<Path> {

    @override
    Path getClip(Size size) {
        Path path = Path();
        // esto trabaja con el plano carteciano 
            path.lineTo(0, 0);
            print('mira el tamaño $size' );
        // estudios de path  https://www.youtube.com/watch?v=hNnr-wdc6Xk
        return path;
    }

    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}