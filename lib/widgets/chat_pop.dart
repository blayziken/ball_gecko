import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w600),
                ),
                yMargin5,
                Text(
                  message,
                  style: TextStyle(fontSize: 22, color: Colors.grey, letterSpacing: 1),
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
