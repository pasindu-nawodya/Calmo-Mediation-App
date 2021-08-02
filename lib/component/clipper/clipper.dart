import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 350);
    path.quadraticBezierTo(
        size.width / 4, 240 /*180*/, size.width / 2, 255);
    path.quadraticBezierTo(
        3 / 4 * size.width, 270, size.width, 210);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}