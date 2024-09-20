import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hello', fromWho: FromWho.recipient),
    Message(text: 'Is the one piece real?', fromWho: FromWho.sender),
  ];

}

Future<void> sendMessage(String text) async {

}