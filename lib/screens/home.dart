import 'package:ball_gecko/models/users.dart';
import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/chat_pop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  // Chat with friends container
                  Positioned(
                    top: media.height * 0.07,
                    child: Container(
                      height: media.height * 0.13,
                      width: media.width,
                      color: Colors.blue,
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Chat with friends in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            yMargin5,
                            Text(
                              'Spaces',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Circle Avatar Image
                  Positioned(
                    top: media.height * 0.09,
                    right: media.width * 0.05,
                    child: Container(
                      height: media.height * 0.15,
                      width: media.height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 70,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // App Bar
                  Positioned(
                    top: 0,
                    child: Container(
                      width: media.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.black,
                              height: media.height * 0.07,
                              // width: 200,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/bg_logo/BGLOGO.png',
                                      height: media.height * 0.07,
                                      width: 130,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
                ],
              ),
            ),

            // Expanded(child: Positioned(
            //   top: ,
            // )),

            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  color: Colors.grey[300],
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Active Spaces',
                        style: TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
                      ),
                      yMargin10,
                      Container(
                        color: Colors.brown,
                        height: media.height * 0.20, // 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Container(
                                // height: 150,
                                width: media.width / 3.7, // 140,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      '${users[index].image}',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.white,
                                            child: Center(
                                              child: Container(
                                                height: 13,
                                                width: 13,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '${users[index].name}\'s\nSpace',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: users.length,
                        ),
                      ),
                      yMargin30,
                      Text(
                        'Recent',
                        style: TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
                      ),
                      yMargin30,
                      // Column(
                      //   children: chatMessages,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  List<Widget> chatMessages = [
    ChatPop(
      name: 'Folake',
      image: 'assets/images/folake.png',
      message: 'Hello everybody! I\'m Folake.',
      time: '08:43',
    ),
    yMargin20,
    ChatPop(
      name: 'Folake',
      image: 'assets/images/folake.png',
      message: 'Hello everybody! I\'m Folake.',
      time: '08:43',
    ),
    yMargin20,
    ChatPop(
      name: 'Folake',
      image: 'assets/images/folake.png',
      message: 'Hello everybody! I\'m Folake.',
      time: '08:43',
    ),
    yMargin20,
    ChatPop(
      name: 'Folake',
      image: 'assets/images/folake.png',
      message: 'Hello everybody! I\'m Folake.',
      time: '08:43',
    ),
  ];
}
