import 'dart:math';

import 'package:flutter/material.dart';

class TestingWidgets extends StatefulWidget {
  const TestingWidgets({Key? key}) : super(key: key);

  @override
  _TestingWidgetsState createState() => _TestingWidgetsState();
}

class _TestingWidgetsState extends State<TestingWidgets> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: media.height,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(100.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(100, 40),
                        topLeft: Radius.elliptical(900, -80),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Spacer(),
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);

    Path path = Path()
      ..moveTo(size.width, 2)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      ..moveTo(size.width, 2)
      ..lineTo(0, size.height - 50)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx, controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius))
      ..lineTo(size.width, size.height - radius)
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.elliptical(40, 20))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 50;

    Path path = Path()
      ..lineTo(size.width - radius, 0)
      ..arcTo(Rect.fromPoints(Offset(size.width - radius, 0), Offset(size.width, radius)), 1.5 * pi, 0.5 * pi, true)
      ..lineTo(size.width, size.height - radius)
      ..arcTo(Rect.fromLTRB(0, size.height - radius, radius, size.height), 0.5 * pi, 0.5 * pi, false)
      ..lineTo(0, radius)
      ..arcTo(Rect.fromLTWH(0, 0, 70, 100), 1 * pi, 0.5 * pi, false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
