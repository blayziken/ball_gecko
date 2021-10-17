import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/nav_bar_items.dart';
import 'package:ball_gecko/widgets/second_screen_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
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
                                  fontSize: media.height * 0.015, // 15,
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
                                    // yMargin5,
                                    SizedBox(height: media.height * 0.007),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'He is in terrible form, @halods hope say you bet on top this guy?',
                                        profileImage: 'assets/images/2nd_page/image3.png',
                                      ),
                                    ),
                                    // yMargin5,
                                    SizedBox(height: media.height * 0.007),

                                    ImageUpload(),
                                    // yMargin5,
                                    SizedBox(height: media.height * 0.007),

                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MessageBubble(
                                        message: 'Peep my GOAT\'s jubilation style! Dope stuff!!!',
                                        profileImage: 'assets/images/2nd_page/image3.png',
                                      ),
                                    ),
                                    // yMargin5,
                                    SizedBox(height: media.height * 0.007),

                                    Text(
                                      'Folake joined.',
                                      style: GoogleFonts.workSans(
                                        textStyle: TextStyle(
                                          color: Color(0XFFED1C24),
                                          letterSpacing: .5,
                                        ),
                                        fontSize: media.height * 0.020, // 20,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    // yMargin5,
                                    SizedBox(height: media.height * 0.007),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: MessageBubble(
                                        message: 'Hello everybody! I\'m\nFolake',
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
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize: media.height * 0.022, // 23,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            yMargin5,
                            Text(
                              'Lukaku: King\nor Not?',
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize: media.height * 0.038, // 40,
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
                        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 7.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/logo_svg.svg',
                              color: Colors.white70,
                              fit: BoxFit.contain,
                              height: media.height * 0.07,
                              width: media.height * 0.120,
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
                        // color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage('assets/images/crate_drawer-removebg-preview.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 18.0, left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: media.height * 0.025, //30,
                              width: media.height * 0.025, //30,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg/Vector_icon1.svg',
                                  color: Colors.white70,
                                  fit: BoxFit.contain,
                                  height: media.height * 0.02, //30,
                                  width: media.height * 0.02, //30,,
                                ),
                              ),
                            ),
                            xMargin5,
                            Text(
                              '5.1k',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: media.height * 0.02),
                            ),
                            xMargin10,
                            Image.asset(
                              'assets/images/bg_gems.png',
                              height: media.height * 0.02, //30,
                              width: media.height * 0.02, //30,
                              fit: BoxFit.cover,
                            ),
                            xMargin5,
                            Text(
                              '1.2k',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: media.height * 0.02),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // TextField
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: media.height * 0.045, // 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF252836),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/smiley.svg',
                          height: media.height * 0.035, // 35,
                          width: media.height * 0.035, // 35,
                          color: Color(0XFF808191),
                          fit: BoxFit.cover,
                        ),
                        xMargin5,
                        _sendMessageTextField(),
                        Icon(Icons.photo_camera, size: media.height * 0.035, color: Color(0XFF808191)),
                        xMargin5,
                        Container(
                          height: media.height * 0.035, // 35
                          width: media.height * 0.035, // 35
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/send_icon.svg',
                              height: media.height * 0.02, // 20
                              width: media.height * 0.02, // 20,
                              color: Colors.white,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Bottom Nav Bar
            Expanded(
              flex: 0,
              child: Container(
                height: media.height * 0.06, // 60,
                width: media.width,
                color: Color(0XFF383838), // Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBarItem(icon: 'assets/svg/Hot_icon.svg'),
                      NavBarItem(icon: 'assets/svg/Communities_icon.svg'),
                      NavBarItem(icon: 'assets/svg/BG_icon_svg.svg'),
                      NavBarItem(icon: 'assets/svg/bag_svg.svg'),
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
          fontWeight: FontWeight.normal,
          fontSize: 20.0,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          border: InputBorder.none,
          hintText: 'Leave a comment',
          hintStyle: GoogleFonts.workSans(
            textStyle: TextStyle(color: Color(0XFF808191)),
            fontSize: 20,
            // fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
