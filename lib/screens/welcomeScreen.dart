import 'package:communi1/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen(
      {this.fontColor, this.backGroundColor, required this.updateState});

  final fontColor;
  final Function updateState;
  final backGroundColor;
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Color _fontColor = widget.fontColor;
    Color _backGroundColor = widget.backGroundColor;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.updateState(0);
        });
      },
      child: AnimatedContainer(
        color: _backGroundColor,
        duration: Duration(milliseconds: 700),
        curve: Curves.decelerate,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text(
                        'Chat with friends',
                        style: kTextStyle.copyWith(
                          color: _fontColor,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                        child: Text(
                          'We ease chatting, join us and enjoy the process.',
                          style: kTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: _fontColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/image/splash_bg-mdpi.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        setState(() {
                          widget.updateState(1);
                        });
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Get Started',
                          style: kTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30),
                      color: kDarkishColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
