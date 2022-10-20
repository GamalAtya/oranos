import 'package:flutter/material.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/core/colors_manager.dart';

class BotChatIconWidget extends StatelessWidget {
  const BotChatIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: ColorManager.secondaryColor,
        shape: BoxShape.circle
      ),
      child: Image.asset(ImageAssets.chatBotIcon),
    );
  }
}
