import 'package:communi1/components/communiTextField.dart';
import 'package:communi1/screens/chattingScreen.dart';
import 'package:flutter/material.dart';
import 'package:communi1/constants.dart';

class LoginCard extends StatefulWidget {
  LoginCard(
      {this.loginContainer,
      this.loginBackGroundColor,
      required this.updateState});

  final loginContainer;
  final Function updateState;
  final loginBackGroundColor;
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double _loginContainer = widget.loginContainer;
    Color _loginBackGroundColor = widget.loginBackGroundColor;

    // TODO: implement build
    return GestureDetector(
      onTap: () {
        widget.updateState(1);
      },
      child: AnimatedContainer(
        transform: Matrix4.translationValues(0, _loginContainer, 0),
        duration: Duration(milliseconds: 700),
        curve: Curves.decelerate,
        child: Container(
          decoration: BoxDecoration(
            color: _loginBackGroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50, top: 20),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Login to Continue',
                        style: kTextStyle.copyWith(
                          color: kDarkishColor,
                          fontSize: 30,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: CommuniTextField(
                        isObscure: false,
                        text: 'Email...',
                        icon: Icon(Icons.email_outlined),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    Container(
                      child: CommuniTextField(
                        isObscure: true,
                        text: 'Password...',
                        icon: Icon(Icons.key_outlined),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              Navigator.of(context).push(_chatRoute());
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Login',
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
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.updateState(2);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Create Account',
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
            ],
          ),
        ),
      ),
    );
  }

  Route _chatRoute() {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) => TimeLine(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
