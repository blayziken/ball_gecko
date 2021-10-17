import 'package:ball_gecko/models/users.dart';
import 'package:flutter/material.dart';

class SpacesBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Container(
      // color: Colors.brown,
      height: media.height * 0.19, // 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Container(
              // height: 150,
              width: media.height * 0.14, // media.width / 3.7, // 140,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    '${users[index].image}',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: media.height * 0.013, // 13,
                          width: media.height * 0.013,
                          color: Colors.white,
                          child: Center(
                            child: Container(
                              height: media.height * 0.012,
                              width: media.height * 0.012,
                              color: Color(0XFF52EF7C), //Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '${users[index].name}\'s\nSpace',
                      style: TextStyle(
                        fontSize: media.height * 0.020, // 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
