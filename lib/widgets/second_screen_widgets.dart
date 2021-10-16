import 'package:ball_gecko/utils/margin.dart';
import 'package:flutter/material.dart';

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
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/Brandon.png'), // image3
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image6.png'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image1.png'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image2.png'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image3.png'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/2nd_page/image5.png'),
        ),
        CircleAvatar(
          radius: 20,
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
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.purple,
        ),
        xMargin10,
        Text(
          'invite\nsomeone',
          style: TextStyle(color: Colors.grey, fontSize: 15),
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
    return Stack(
      children: [
        // Message Container
        Positioned(
          child: Container(
            height: 60,
            width: 150,
            color: Colors.black45,
            child: Center(
              child: Flexible(
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white, fontSize: 15),
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
            radius: 15,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(profileImage),
          ),
        ),
      ],
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
        Icon(
          Icons.cancel,
          color: Colors.orangeAccent,
          size: 20,
        ),
        xMargin10,
        Icon(
          Icons.arrow_downward_rounded,
          color: Colors.black,
          size: 20,
        ),
        xMargin10,
        Container(
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

        // Container(
        //   height: 30,
        //   width: 30,
        //   // color: Colors.orangeAccent,
        //   child: Center(
        //     child: Icon(
        //       Icons.cancel,
        //       color: Colors.orangeAccent,
        //     ),
        //   ),
        // ),
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
