import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItem extends StatelessWidget {
  final String icon;
  const NavBarItem({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        height: media.height * 0.035,
        width: media.height * 0.035,
        // color: Colors.green,
        child: SvgPicture.asset(
          icon,
          color: Colors.white70,
          fit: BoxFit.contain,
        ),
      ),
      onTap: () => Navigator.pushNamed(context, '/chat-screen'),
    );
  }
}

class NavBarProfileImage extends StatelessWidget {
  const NavBarProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: Center(
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.green,
          backgroundImage: AssetImage(
            'assets/images/Lase_1.png',
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Row(
              children: [
                Spacer(),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// NavBarItem(icon: 'assets/images/icon_flame.png'),
// NavBarItem(icon: 'assets/images/icon_group.png'),
// NavBarItem(icon: 'assets/images/logo.png'),
// NavBarItem(icon: 'assets/images/icon_bag.png'),
