
import 'package:flutter/material.dart';
import 'package:oranos/core/colors_manager.dart';
import 'package:oranos/core/enums.dart';

import '../../domain/entities/message_enitity.dart';
class MessageBodyWidget extends StatelessWidget {
  final Message message;
  const MessageBodyWidget({required this.message ,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.7,
        decoration: BoxDecoration(
            color: message.messageType == MessageType.bot ? ColorManager.secondaryColor : ColorManager.primaryColor ,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message.text ,
            maxLines: 3,
            overflow: TextOverflow.fade,
            style:message.messageType == MessageType.bot ? Theme.of(context).textTheme.headline2: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
