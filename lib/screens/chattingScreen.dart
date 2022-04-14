import 'package:flutter/material.dart';
import 'package:communi1/constants.dart';
import 'package:communi1/components/chatStyle.dart';
import 'package:communi1/screens/starterScreen.dart';

class TimeLine extends StatelessWidget {
  static String id = 'TimeLine';

  const TimeLine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kMainThemeColor,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Chats',
                style: kTextStyle.copyWith(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 130),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(top: 10),
              children: [
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Bander',
                  phoneNumber: '966501215757',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
                ChatStyle(
                  name: 'Ahmed',
                  phoneNumber: '966501215752',
                  profileImage: 'assets/image/whenWeStart.webp',
                ),
                ChatStyle(
                  name: 'Khalid',
                  phoneNumber: '+966501215751',
                  profileImage: 'assets/image/splash_bg-mdpi.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
