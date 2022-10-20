import 'package:flutter/material.dart';

const String imagePath = 'assets/images';


class ImageAssets {

  static String appIcon = '$imagePath/appIcon.png';
  // On Boarding page Images
  static String onBoardingBackground = '$imagePath/on_boarding/onBoardingBackground.png';
  static String onBoardingPath = '$imagePath/on_boarding/onBoardingPath.png';
  static String onBoardingBot = '$imagePath/on_boarding/onBoardingBot.png';
   // chat
  static String chatBotIcon = '$imagePath/chat/chat_bot_icon.png';
  static String chatSeenIcon = '$imagePath/chat/seen_icon.svg';
  static String sendIcon = '$imagePath/chat/send.svg';
  static String voiceIcon = '$imagePath/chat/voice.svg';
  static String kareem = '$imagePath/experts/kareem.png';
  static String merna = '$imagePath/experts/merna.png';
  static String home = '$imagePath/experts/Home.png';
  static String profile = '$imagePath/experts/Profile.png';
  static String star = '$imagePath/experts/Star.png';
  static String wallet = '$imagePath/experts/Wallet.png';
  static String categoryIcon = '$imagePath/experts/catIcon.png';

}


class FontAssets {
  static const String fontFamilyPoppins = "Poppins";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}