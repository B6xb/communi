import 'package:communi1/components/communiTextField.dart';

import 'package:flutter/material.dart';
import 'package:communi1/constants.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({this.createAccountContainer, required this.updateState});

  final createAccountContainer;
  final Function updateState;
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    double _createAccountContainer = widget.createAccountContainer;

    // TODO: implement build
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.updateState(2);
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.translationValues(0, _createAccountContainer, 0),
        duration: Duration(milliseconds: 700),
        curve: Curves.decelerate,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
                        'Create Account',
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: CommuniTextField(
                        isObscure: false,
                        text: 'Email...',
                        icon: Icon(Icons.email_outlined),
                      ),
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
                          widget.updateState(0);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Create',
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
                      margin: EdgeInsets.only(bottom: 40),
                      child: GestureDetector(
                        onTap: () {
                          widget.updateState(1);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Back to Login',
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
}
