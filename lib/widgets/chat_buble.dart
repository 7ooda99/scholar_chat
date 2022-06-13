import 'package:flutter/material.dart';
import 'package:scholar_chat/models/message.dart';

import '../constant.dart';


class ChatBuble extends StatelessWidget {
   ChatBuble({ Key? key,required this.message }) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
         
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            color: kPrimaryColor,
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}





class ChatBubleForFriend extends StatelessWidget {
   ChatBubleForFriend({ Key? key,required this.message }) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
         
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            ),
            color: Colors.lightBlueAccent,
          ),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}