
import 'package:flutter/material.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/core/colors_manager.dart';
import 'package:oranos/features/get_started/presentation/pages/chat_page.dart';
import 'package:oranos/features/get_started/presentation/widgets/welcome_text_widget.dart';

import '../../../../core/strings_manager.dart';
import '../../../../core/widgets/lang_button_widget.dart';
import '../../../../core/widgets/primary_button_widget.dart';
class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Container(
      color: ColorManager.white,
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const WelcomeTextWidget(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: size.height * 0.33,
                width: size.width* 0.6,
                child: Image.asset(ImageAssets.onBoardingBot)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: PrimaryButtonWidget(
                width : size.width * 0.42,
                height: size.height * 0.06,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatPage()));
                } ,
                text: AppStrings.nextButtonText),
          ),
          const LanguageButton(),

        ],
      ),
    );
  }
}
