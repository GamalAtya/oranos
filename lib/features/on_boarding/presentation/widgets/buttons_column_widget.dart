import 'package:flutter/material.dart';
import 'package:oranos/core/widgets/primary_button_widget.dart';
import 'package:oranos/features/get_started/presentation/pages/get_started_page.dart';

import '../../../../core/colors_manager.dart';
import '../../../../core/strings_manager.dart';
import '../../../../core/widgets/lang_button_widget.dart';


class ButtonsColumnWidget extends StatelessWidget {
  const ButtonsColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SizedBox(
      height: size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PrimaryButtonWidget(
              width : size.width * 0.87,
              height: size.height * 0.06,
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GetStarted())) ,
              text: AppStrings.getStartedButtonText),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(AppStrings.doNotHaveAccountText ,style: Theme.of(context).textTheme.headline5,),
                GestureDetector(
                    onTap: () {},
                    child: Text(AppStrings.signUpButtonText ,style: Theme.of(context).textTheme.headline6,))
              ],
            ),
          ),
          const LanguageButton()
        ],
      ),
    );
  }
}
