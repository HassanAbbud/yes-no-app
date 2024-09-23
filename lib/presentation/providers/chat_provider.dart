import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Is the one piece real?', fromWho: FromWho.sender),
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return;

    await Future.delayed(const Duration(milliseconds: 100));

    final newMessage = Message(text: text, fromWho: FromWho.sender);
    messageList.add( newMessage );

    if (text.endsWith('?')) {
      recipientReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  
  Future<void> recipientReply() async {
    final recipientMessage = await getYesNoAnswer.getAnswer();
    messageList.add(recipientMessage);
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
