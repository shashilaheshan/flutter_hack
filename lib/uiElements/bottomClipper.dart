import 'package:flutter/material.dart';

class BottomClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ClipOval(
          child: Image.asset("assets/clipImage.png"),
          clipper: MyClipper(),
        ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final Rect rect = Rect.fromLTWH(0.0-size.width/2, 0.0, size.width * 2, size.height * 2);
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }

}