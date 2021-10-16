import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/chat_pop.dart';
import 'package:ball_gecko/widgets/nav_bar_items.dart';
import 'package:ball_gecko/widgets/spaces_list_view.dart';
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
                  // Active Spaces + Recent
                  Positioned(
                    top: media.height * 0.26,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        // color: Colors.grey[300],
                        width: media.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Active Spaces',
                              style: TextStyle(fontSize: 35, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
                            ),
                            yMargin10,
                            SpacesBuild(),
                            yMargin20,
                            Text(
                              'Recent',
                              style: TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
                            ),
                            yMargin30,
                            Column(
                              children: chatMessages,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Chat with friends container
                  Positioned(
                    top: media.height * 0.07,
                    child: Container(
                      height: media.height * 0.13,
                      width: media.width,
                      color: Colors.blue,
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Chat with friends in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
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
                            backgroundImage: AssetImage(
                              'assets/images/Lase_1.png',
                            ),
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

            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     color: Colors.yellow,
            //     child: Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 15.0),
            //       child: Container(
            //         // color: Colors.grey[300],
            //         width: double.infinity,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Active Spaces',
            //               style: TextStyle(fontSize: 35, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
            //             ),
            //             yMargin10,
            //             SpacesBuild(),
            //             yMargin30,
            //             Text(
            //               'Recent',
            //               style: TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.w700, letterSpacing: 1),
            //             ),
            //             yMargin30,
            //             Column(
            //               children: chatMessages,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // Spacer(),
            Expanded(
              flex: 0,
              child: Container(
                height: media.height * 0.06, // 60,
                width: media.width,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBarItem(icon: 'assets/images/icon_flame.png'),
                      NavBarItem(icon: 'assets/images/icon_group.png'),
                      NavBarItem(icon: 'assets/images/logo.png'),
                      NavBarItem(icon: 'assets/images/icon_bag.png'),
                      NavBarProfileImage(),
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
      name: 'Brandon',
      image: 'assets/images/Brandon.png',
      message: 'Will do, super thank you 😃♥',
      time: 'Tue',
    ),
    yMargin20,
    ChatPop(
      name: 'Solape',
      image: 'assets/images/Solape.png',
      message: 'Uploaded a picture',
      time: 'Sun',
    ),
    yMargin20,
    ChatPop(
      name: 'Marcel',
      image: 'assets/images/marcel.png',
      message: 'Here is another post, if you...',
      time: '23 Sep',
    ),
  ];
}
