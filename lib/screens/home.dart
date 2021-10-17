import 'package:ball_gecko/utils/margin.dart';
import 'package:ball_gecko/widgets/chat_pop.dart';
import 'package:ball_gecko/widgets/dot_indicator.dart';
import 'package:ball_gecko/widgets/nav_bar_items.dart';
import 'package:ball_gecko/widgets/spaces_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    top: media.height * 0.25,
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
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Color(0XFF7f7f7f), letterSpacing: 1),
                                fontSize: media.height * 0.035, // 35,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: media.height * 0.013),
                            // yMargin15,
                            SpacesBuild(),
                            // yMargin15,
                            SizedBox(height: media.height * 0.013),

                            Text(
                              'Recent',
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Color(0XFF7f7f7f), letterSpacing: 1),
                                fontSize: media.height * 0.035, // 35,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            // yMargin5,
                            SizedBox(height: media.height * 0.005),

                            Center(child: Indicator()),
                            // yMargin10,
                            SizedBox(height: media.height * 0.010),

                            Expanded(
                              flex: 0,
                              child: Column(
                                children: chatMessages,
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
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Chat with friends in',
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize: media.height * 0.025, // 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            yMargin5,
                            Text(
                              'Spaces',
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize: media.height * 0.045, // 45,
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
                    child: InkWell(
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
                      onTap: () => Navigator.pushNamed(context, '/chat-screen'),
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

  List<Widget> chatMessages = [
    ChatPop(
      name: 'Folake',
      image: 'assets/images/folake.png',
      message: 'Hello everybody! I\'m Folake.',
      time: '08:43',
    ),
    yMargin15,
    ChatPop(
      name: 'Brandon',
      image: 'assets/images/Brandon.png',
      message: 'Will do, super thank you 😃♥',
      time: 'Tue',
    ),
    yMargin15,
    ChatPop(
      name: 'Solape',
      image: 'assets/images/Solape.png',
      message: 'Uploaded a picture',
      time: 'Sun',
    ),
    yMargin15,
    ChatPop(
      name: 'Marcel',
      image: 'assets/images/marcel.png',
      message: 'Here is another post, if you...',
      time: '23 Sep',
    ),
  ];
}
