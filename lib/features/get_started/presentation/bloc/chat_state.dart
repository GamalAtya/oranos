part of 'chat_bloc.dart';

abstract class ChatState  {
  const ChatState();
}

class ChatInitial extends ChatState {}

class GetMessagesState extends ChatState {
  final List<Message> messagesList ;
  final List<Selection> selectionsList ;

  const GetMessagesState({required this.messagesList  ,required this.selectionsList});

}

