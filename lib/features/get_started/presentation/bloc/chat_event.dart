part of 'chat_bloc.dart';

abstract class ChatEvent {
  const ChatEvent();

}


class GetMessageEvent extends ChatEvent {
}
class SendMessageEvent extends ChatEvent {
  final Message message ;
  const SendMessageEvent({required this.message});

}

class SelectEvent extends ChatEvent {
  final int index ;
  const SelectEvent({required this.index});

}




