import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hello', fromWho: FromWho.recipient),
    Message(text: 'Is the one piece real?', fromWho: FromWho.sender),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return;

    await Future.delayed(const Duration(milliseconds: 100));

    final newMessage = Message(text: text, fromWho: FromWho.sender);
    messageList.add( newMessage );

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds:300 ), 
      curve: Curves.easeOut
      );
  }
}
