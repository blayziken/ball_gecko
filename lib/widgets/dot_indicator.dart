import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 14,
      decorator: DotsDecorator(
        color: Colors.redAccent,
        size: Size.square(4),
        activeColor: Colors.red,
        activeSize: Size.square(7),
        spacing: EdgeInsets.all(7),
      ),
    );
  }
}
