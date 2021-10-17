import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return DotsIndicator(
      dotsCount: 10,
      decorator: DotsDecorator(
        color: Colors.redAccent,
        size: Size.square(media.height * 0.004),
        activeColor: Colors.red,
        activeSize: Size.square(media.height * 0.006),
        spacing: EdgeInsets.all(7),
      ),
    );
  }
}
