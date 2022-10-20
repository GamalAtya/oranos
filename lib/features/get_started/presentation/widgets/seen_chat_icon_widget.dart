import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/core/colors_manager.dart';

class SeenChatIconWidget extends StatelessWidget {
  const SeenChatIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: SvgPicture.asset(ImageAssets.chatSeenIcon),
    );
  }
}
