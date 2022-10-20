


import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/domain/entities/selection_entitity.dart';
import 'package:oranos/features/get_started/domain/repositories/chat_repository.dart';

import '../../../../core/enums.dart';

class ChatRepositoryImpl implements ChatRepository {
  final List<Message> messageList = [
   const Message(text: "Hi, Whats You Name Firstname?", messageType: MessageType.bot),
   const Message(text: "Abdalla", messageType: MessageType.user),
   const Message(text: "Ok, Abdalla Whats Your Lastname?", messageType: MessageType.bot),
   const Message(text: "Salah", messageType: MessageType.user),
   const Message(text: "Mr Abdalla Salah, What's your Title? ", messageType: MessageType.bot),
   const Message(text: "Front-end Developer", messageType: MessageType.user),
   const Message(text: "What Categories you will need expert In?", messageType: MessageType.bot),
  ];

  @override
  Future<List<Message>> getMessagesList() {
    return Future.value(messageList);
  }

  @override
  Future<void> sendMessage(Message message) async {
    messageList.add(message);
  }

}