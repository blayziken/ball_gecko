import 'dart:math';
import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                color: Colors.brown,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: media.height * 0.078,
                        decoration: BoxDecoration(
// color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/images/crate_drawer-removebg-preview.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: media.height * 0.03, //30,
                                width: media.height * 0.03, //30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/icon_group.png',
                                    height: media.height * 0.02, //30,
                                    width: media.height * 0.02, //30,
                                    color: Colors.white,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              xMargin5,
                              Text(
                                '5.1k',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              xMargin20,
                              Image.asset(
                                'assets/images/bg_gems.png',
                                height: media.height * 0.03, //30,
                                width: media.height * 0.03, //30,
                                fit: BoxFit.cover,
                              ),
                              xMargin5,
                              Text(
                                '1.2k',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),

                    DotsIndicator(
                      dotsCount: 14,
                      decorator: DotsDecorator(
                        color: Colors.redAccent,
                        size: Size.square(5),
                        activeColor: Colors.blue,
                        activeSize: Size.square(9),
                        spacing: EdgeInsets.all(7),
                      ),
                    ),
                    // Container(
                    //   height: 200,
                    //   width: 250,
                    //   decoration: BoxDecoration(
                    //     color: Colors.indigo,
                    //     borderRadius: BorderRadius.only(
                    //       bottomLeft: Radius.elliptical(100, 40),
                    //       topLeft: Radius.elliptical(900, -80),
                    //       topRight: Radius.circular(50),
                    //     ),
                    //   ),
                    // ),
                    // Spacer(),
                    // ClipPath(
                    //   clipper: MyCustomClipper4(),
                    //   child: Container(
                    //     height: 200,
                    //     width: 250,
                    //     decoration: BoxDecoration(
                    //       color: Colors.indigo,
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(60),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Spacer(),
                    // ClipPath(
                    //   clipper: MyCustomClipper(),
                    //   child: Container(
                    //     height: 200,
                    //     width: 250,
                    //     decoration: BoxDecoration(
                    //       color: Colors.indigo,
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(60),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Spacer(),
                    ClipPath(
                      clipper: MyCustomClipper5(),
                      child: Container(
                        height: media.height * 0.085, //400,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    // ClipPath(
                    //   clipper: MyPainter(),
                    //   child: Container(
                    //     height: media.height * 0.085, //400,
                    //     width: 300,
                    //     decoration: BoxDecoration(
                    //       color: Colors.indigo,
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(60),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      height: media.height * 0.1,
                      width: 300,
                      color: Colors.teal,
                      child: CustomPaint(
                        size: Size.fromHeight(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon_group.png',
                              height: 30,
                              width: 30,
                              fit: BoxFit.fill,
                            ),
                            xMargin5,
                            Text(
                              '5.1k',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            xMargin20,
                            Image.asset(
                              'assets/images/bg_gems.png',
                              height: 30,
                              width: 30,
                              fit: BoxFit.fill,
                            ),
                            xMargin5,
                            Text(
                              '1.2k',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        painter: MyPainter(),
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/svg/crate_drawer.svg',
                      height: media.height * 0.07,
                      width: 200,
                      color: Colors.red,

                      // color: Colors.blue,
                    ),

                    Spacer(),
                    Stack(
                      // alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/crate_drawer.svg',
                          height: media.height * 0.085,
                          width: 200,
                          color: Colors.red,
                        ),
                        Positioned(
                          left: 20,
                          bottom: 25,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: media.height * 0.03, //30,
                                  width: media.height * 0.03, //30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/icon_group.png',
                                      height: media.height * 0.02, //30,
                                      width: media.height * 0.02, //30,
                                      color: Colors.white,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                xMargin5,
                                Text(
                                  '5.1k',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                xMargin20,
                                Image.asset(
                                  'assets/images/bg_gems.png',
                                  height: media.height * 0.03, //30,
                                  width: media.height * 0.03, //30,
                                  fit: BoxFit.cover,
                                ),
                                xMargin5,
                                Text(
                                  '1.2k',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),

                    // width: 140px, h: 66px, top: -3px, left: 249px

                    // SvgPicture.string("   <svg height="66" width="140">   "),

                    Container(
                      height: media.height * 0.085,
                      width: 200,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/images/crate_drawer-removebg-preview.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon_group.png',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fill,
                          ),
                          xMargin5,
                          Text(
                            '5.1k',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          xMargin20,
                          Image.asset(
                            'assets/images/bg_gems.png',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fill,
                          ),
                          xMargin5,
                          Text(
                            '1.2k',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),

                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                        height: media.height * 0.085,
                        // width: 200,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/icon_group.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                              xMargin5,
                              Text(
                                '5.1k',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              xMargin20,
                              Image.asset(
                                'assets/images/bg_gems.png',
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                              xMargin5,
                              Text(
                                '1.2k',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
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
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var controlPoint = Offset(size.width / 2, size.height / 2);
    // var endPoint = Offset(size.width, size.height);

    Path path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(-10, 5);
    // ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
    var controlPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.close();

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

//////////////////////////////////////////////////////////////////////////////
class MyCustomClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 50;

    Path path = Path()..lineTo(0, size.height - 40);
    var controlPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class MyCustomClipper5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()..lineTo(0, size.height - 900); // - 400

    path.quadraticBezierTo(size.width / 3, size.height / 2, size.width / 2, size.height - 100);
    path.quadraticBezierTo(size.width - (size.width / 3), size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(100, 100);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Colors.red;
    path = Path();
    path.lineTo(0, -0.15);
    path.cubicTo(0, -0.15, size.width, -0.15, size.width, -0.15);
    path.cubicTo(size.width, -0.15, size.width, size.height * 0.85, size.width, size.height * 0.85);
    path.cubicTo(size.width, size.height * 0.85, size.width / 4, size.height * 0.85, size.width / 4, size.height * 0.85);
    path.cubicTo(size.width * 0.18, size.height * 0.85, size.width * 0.12, size.height * 0.75, size.width * 0.1, size.height * 0.61);
    path.cubicTo(size.width * 0.1, size.height * 0.61, 0, -0.15, 0, -0.15);
    path.cubicTo(0, -0.15, 0, -0.15, 0, -0.15);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// width: 140px, h: 66px, top: -3px, left: 249px
// SvgPicture.asset('')
