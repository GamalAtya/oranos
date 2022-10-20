

import 'package:oranos/core/enums.dart';
import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';

class MessageModel extends Message {
  const MessageModel({required String text, required MessageType messageType})
      :super(messageType: messageType, text:text );

  factory MessageModel.fromJson(Map<String , dynamic> json){
    return MessageModel(text: json["text"], messageType:json["messageType"] == 0 ? MessageType.bot :MessageType.user );
  }

  Map<String , dynamic> toJson(MessageModel model){
   return {
     "text" : text ,
     "messageType" : messageType == MessageType.bot ? 0 : 1
   };
  }
}