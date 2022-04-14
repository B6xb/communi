import 'package:flutter/material.dart';

class CommuniTextField extends StatelessWidget {
  CommuniTextField({
    required this.text,
    required this.icon,
    required this.isObscure,
  });
  final String text;
  final Icon icon;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 350,
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: icon,
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}
