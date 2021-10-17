import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPop extends StatelessWidget {
  final String name;
  final String image;
  final String time;
  final String message;

  const ChatPop({
    Key? key,
    this.name = "",
    this.image = "",
    this.time = "",
    this.message = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Container(
      // color: Colors.teal,
      height: media.height * 0.055, // 60,
      child: Padding(
        // padding: EdgeInsets.symmetric(horizontal: 0.0),
        padding: EdgeInsets.only(right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              // backgroundColor: Colors.red,
              backgroundImage: AssetImage(
                image,
              ),
            ),
            xMargin15,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(color: Color(0XFF7f7f7f), letterSpacing: 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                yMargin5,
                Text(
                  message,
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(color: Color(0XFF7f7f7f), letterSpacing: 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(color: Color(0XFF7f7f7f)),
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
