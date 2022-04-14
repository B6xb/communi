import 'package:flutter/material.dart';

class ChatStyle extends StatefulWidget {
  ChatStyle({
    required this.name,
    this.profileImage,
    this.phoneNumber,
  });
  final String name;
  final profileImage;
  final phoneNumber;

  @override
  State<ChatStyle> createState() => _ChatStyleState();
}

class _ChatStyleState extends State<ChatStyle> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            counter++;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 4.0,
                      left: 10,
                      right: 6,
                      bottom: 2,
                    ),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(widget.profileImage),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          widget.phoneNumber,
                          style: TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  counter.toString(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
