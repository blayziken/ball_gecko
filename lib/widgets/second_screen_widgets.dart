import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RowImages extends StatelessWidget {
  const RowImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/Brandon.png'), // image3
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image6.png'),
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image1.png'),
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image2.png'),
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image3.png'),
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image5.png'),
        ),
        CircleAvatar(
          radius: media.height * 0.025, // 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image4.png'),
        ),
      ],
    );
  }
}

class InviteSomeone extends StatelessWidget {
  const InviteSomeone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/Union.svg',
              height: media.height * 0.07, // 70
              width: media.height * 0.07, // 70,
              color: Colors.red,
            ),
            Positioned(
              top: media.height * (0.07 / 4),
              left: media.height * 0.015,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/person_icon/Vector.svg',
                    height: media.height * 0.025, // 70
                    width: media.height * 0.025, // 70,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: media.height * 0.013, // 15,
                      ),
                      // Spacer(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        xMargin10,
        Text(
          'invite\nsomeone',
          style: GoogleFonts.workSans(
            textStyle: TextStyle(color: Color(0XFF7f7f7f)),
            fontSize: media.height * 0.019,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final String profileImage;

  const MessageBubble({
    Key? key,
    required this.message,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        children: [
          // Message Container
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Container(
                height: media.height * 0.055, // 55,
                width: media.width / 1.5, // 350,
                decoration: BoxDecoration(
                  color: Color(0XFF373E4E),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: media.height * 0.016, //17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Profile Image
          Positioned(
            right: 0,
            bottom: 0,
            child: CircleAvatar(
              radius: media.height * 0.016, // 16,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: media.height * 0.015, // 15,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(profileImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageUpload extends StatelessWidget {
  const ImageUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Row(
      children: [
        Spacer(),
        Icon(
          Icons.cancel_rounded,
          color: Color(0XFFF18303),
          size: media.height * 0.03, // 30,
        ),
        // xMargin10,
        SizedBox(width: media.height * 0.03),
        Icon(
          Icons.arrow_downward_rounded,
          color: Colors.black,
          size: media.height * 0.025, // 25,
        ),
        // xMargin5,
        SizedBox(width: media.height * 0.02),

        Expanded(
          child: Container(
            height: media.height * 0.125, // 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.purple,
            ),
            child: Image.asset(
              'assets/images/2nd_page/image_lukaku.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
