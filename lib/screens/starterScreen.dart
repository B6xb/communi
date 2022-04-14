import 'package:communi1/screens/loginCard.dart';
import 'package:communi1/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:communi1/constants.dart';
import 'dart:core';
import 'package:communi1/screens/createAccountCard.dart';

class ParentScreen extends StatefulWidget {
  static String id = 'MyHomePage';

  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  //updating the states between widgets
  void updateState(int state) {
    setState(() {
      _colorState = state;
    });
  }

  //default values
  int _colorState = 0;
  double _loginContainer = 0;
  double _accountContainer = 0;
  double windowHeight = 0;

  Color _backGroundColor = Colors.white;
  Color _fontColor = kDarkishColor;
  Color _loginBackGroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;

    // _chattingContainerHeight = w * 20;
    // check for the states
    switch (_colorState) {
      case 0:
        _backGroundColor = Colors.white;
        _loginContainer = windowHeight;
        _accountContainer = windowHeight;

        _loginBackGroundColor = Colors.white;
        _fontColor = kDarkishColor;
        break;

      case 1:
        _backGroundColor = kMainThemeColor;
        _loginBackGroundColor = Colors.white;
        _loginContainer = windowHeight * 0.30;
        _accountContainer = windowHeight;
        _fontColor = Colors.white;
        break;

      case 2:
        _backGroundColor = kMainThemeColor;
        _accountContainer = windowHeight * 0.33;
        _loginBackGroundColor = Color(0xbbffffff);
        _fontColor = Colors.white;
        break;
    }

    return Scaffold(
      body: Stack(
        children: [
          WelcomeScreen(
            updateState: updateState,
            backGroundColor: _backGroundColor,
            fontColor: _fontColor,
          ),
          LoginCard(
            loginContainer: _loginContainer,
            loginBackGroundColor: _loginBackGroundColor,
            updateState: updateState,
          ),
          CreateAccount(
            updateState: updateState,
            createAccountContainer: _accountContainer,
          ),
        ],
      ),
    );
  }
}
