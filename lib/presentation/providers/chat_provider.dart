import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message= [
    Message(text: 'Hello', fromWho: FromWho.sender),
    Message(text: 'Is the one piece real?', fromWho: FromWho.sender),
  ];

}

Future<void> sendMessage(String text) async {
  
}