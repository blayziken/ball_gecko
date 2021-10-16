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
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
