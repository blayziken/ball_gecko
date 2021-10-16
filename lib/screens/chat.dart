import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/nav_bar_items.dart';
import 'package:ball_gecko/widgets/second_screen_widgets.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // final TextEditingController messageController = TextEditingController();

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
                  // Invite someone + Chat
                  Positioned(
                    top: media.height * 0.25,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        color: Colors.grey[300],
                        width: media.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InviteSomeone(),
                            yMargin5,
                            RowImages(),
                            Center(
                              child: Text(
                                'TODAY 6:34 PM',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            yMargin5,
                            Expanded(
                              child: Container(
                                color: Colors.lightBlueAccent,
                                height: 500,
                                child: ListView(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'Anybody here loving Lukaku\'s form?👑',
                                        profileImage: 'assets/images/2nd_page/image6.png',
                                      ),
                                    ),
                                    yMargin10,
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'He is in terrible form, @halods hope say you bet on top this guy?',
                                        profileImage: 'assets/images/2nd_page/image3.png',
                                      ),
                                    ),
                                    yMargin10,
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: ImageUpload(),
                                    ),
                                    yMargin10,
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'Peep my GOAT\'s jubilation style! Dope stuff!!!',
                                        profileImage: 'assets/images/2nd_page/image3.png',
                                      ),
                                    ),
                                    yMargin10,
                                    Text(
                                      'Folake joined.',
                                      style: TextStyle(color: Colors.white, fontSize: 15),
                                    ),
                                    yMargin10,
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: MessageBubble(
                                        message: 'Hello everyody! I\'m Folake',
                                        profileImage: 'assets/images/2nd_page/image4.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                              'Lase' 's Space',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            yMargin5,
                            Text(
                              'Lukaku: King\nor Not?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
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

            // Spacer(),
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Row(
                    children: [
                      Text('🙂', style: TextStyle(color: Colors.grey, fontSize: 25)),
                      xMargin5,
                      _sendMessageTextField(),
                      Icon(Icons.photo_camera, size: 20, color: Colors.grey),
                      xMargin5,
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(Icons.send_outlined, size: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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

  Widget _sendMessageTextField() {
    return TextFormField(
      // controller: messageController,
      textInputAction: TextInputAction.send,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Leave a comment',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
