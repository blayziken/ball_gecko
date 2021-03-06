import 'package:ball_gecko/screens/chat.dart';
import 'package:ball_gecko/screens/home.dart';
import 'package:ball_gecko/testing_wid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ball Gecko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/chat-screen': (context) => ChatScreen(),
      },
    );
  }
}
