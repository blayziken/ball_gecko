import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/nav_bar_items.dart';
import 'package:ball_gecko/widgets/second_screen_widgets.dart';
import 'package:ball_gecko/widgets/spaces_list_view.dart';
import 'package:flutter/cupertino.dart';
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
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        // color: Colors.grey[300],
                        width: media.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(flex: 0, child: InviteSomeone()),
                            yMargin20,
                            Expanded(flex: 0, child: RowImages()),
                            yMargin10,
                            Center(
                              child: Text(
                                'TODAY 6:34 PM',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            yMargin15,
                            Expanded(
                              flex: 0,
                              child: Container(
                                // color: Colors.lightBlueAccent,
                                width: double.infinity,
                                height: media.height * 0.404, // 500,
                                child: ListView(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'Anybody here loving Lukaku\'s\nform?👑',
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
                                    ImageUpload(),
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
                                      style: TextStyle(color: Colors.pink, fontSize: 20, letterSpacing: 1),
                                    ),
                                    yMargin7,
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: MessageBubble(
                                        message: 'Hello everyody! I\'m\nFolake',
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
                      color: Color(0XFFFC5C62), // Colors.blue,
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Lase\'s Space',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            yMargin5,
                            Text(
                              'Lukaku: King\nor Not?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
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
                        color: Color(0XFFFC5C62), // Colors.blue,
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

                  // App Bar (Ball Gecko Logo)
                  Positioned(
                    top: 0,
                    child: Container(
                      width: media.width,
                      height: media.height * 0.07,
                      color: Color(0XFF383838), // Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/bg_logo/BGLOGO.png',
                              height: media.height * 0.07,
                              width: media.height * 0.120, // 120
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // App Bar (Curved Shape part)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: media.height * 0.078,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/crate_drawer-removebg-preview.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 18.0, left: 30, right: 10),
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
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('🙂', style: TextStyle(color: Colors.grey, fontSize: 35)),
                        xMargin5,
                        _sendMessageTextField(),
                        Icon(Icons.photo_camera, size: 35, color: Colors.grey),
                        xMargin5,
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Icon(Icons.send_outlined, size: 23, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
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
    return Expanded(
      child: TextFormField(
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
      ),
    );
  }
}
