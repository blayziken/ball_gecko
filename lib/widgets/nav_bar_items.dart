import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String icon;
  const NavBarItem({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 30,
      // color: Colors.green,
      child: Image.asset(
        icon,
        fit: BoxFit.contain,
        // width: 30,
        // height: 40,
      ),
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
