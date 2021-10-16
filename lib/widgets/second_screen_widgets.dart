import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class RowImages extends StatelessWidget {
  const RowImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/Brandon.png'), // image3
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image6.png'),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image1.png'),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image2.png'),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image3.png'),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image5.png'),
        ),
        CircleAvatar(
          radius: 25,
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
              child: Icon(
                Icons.person_add_alt_1,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        xMargin10,
        Text(
          'invite\nsomeone',
          style: TextStyle(color: Colors.black45, fontSize: 19, fontWeight: FontWeight.bold),
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
                height: 55,
                width: media.width / 1.5, // 350,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      message,
                      style: TextStyle(color: Colors.white, fontSize: 17, letterSpacing: 2),
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
              radius: 16,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 15,
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
    return Row(
      children: [
        Spacer(),
        Icon(
          Icons.cancel,
          color: Colors.orange[800],
          size: 30,
        ),
        xMargin20,
        Icon(
          Icons.arrow_downward_rounded,
          color: Colors.black,
          size: 30,
        ),
        xMargin15,
        Container(
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.purple,
          ),
          child: Image.asset(
            'assets/images/2nd_page/image_lukaku.png',
            fit: BoxFit.cover,
          ),
        ),
        yMargin10,
      ],
    );
  }
}

// Widget _sendMessageTextField() {
//   return Container(
//     child: Padding(
//       padding: EdgeInsets.only(left: 15, right: 15, top: 5),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: 55,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   // controller: messageController,
//                   textInputAction: TextInputAction.send,
//                   // keyboardType: ,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25.0,
//                   ),
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Aa',
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 22.0,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     suffixIcon: Icon(
//                       Icons.mic,
//                       color: Colors.black,
//                       size: 30,
//                     ),
//                   ),
//                   onFieldSubmitted: (value) {
//                     messages.add(value);
//                     messageCtrl.clear();
//                     setState(() {});
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
