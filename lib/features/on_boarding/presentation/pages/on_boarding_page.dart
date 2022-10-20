
import 'package:flutter/material.dart';

import '../../../../core/assets_manager.dart';
import '../../../../core/colors_manager.dart';
import '../../../../core/strings_manager.dart';
import '../widgets/buttons_column_widget.dart';
import '../widgets/icon_widget.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
         image: AssetImage(ImageAssets.onBoardingBackground)
        )
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
               IconWidget(),
               ButtonsColumnWidget()
            ],
          ),
        ),
      ),
    );
  }
}
