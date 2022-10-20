import 'package:flutter/material.dart';
import 'package:oranos/core/colors_manager.dart';
import 'package:oranos/core/enums.dart';
import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/presentation/widgets/bot_chat_icon_widget.dart';
import 'package:oranos/features/get_started/presentation/widgets/seen_chat_icon_widget.dart';

import 'message_body_widget.dart';

class MessageWidget extends StatelessWidget {
  final Message message ;
  const MessageWidget({required this.message ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        // mainAxisAlignment: message.messageType == MessageType.bot ? MainAxisAlignment.start :MainAxisAlignment.end ,
        textDirection:message.messageType == MessageType.bot ? TextDirection.ltr :  TextDirection.rtl,
        children: [
          message.messageType == MessageType.bot ?
            const  BotChatIconWidget() :
             const SeenChatIconWidget(),
           MessageBodyWidget(message: message,)
        ],
      ),
    );
  }
}
