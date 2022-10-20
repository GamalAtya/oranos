

import 'package:flutter/material.dart';

import '../../../../core/assets_manager.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SizedBox(
      width: size.width * 0.6,
      height: size.height * 0.25,
      child: Stack(
        children: [
          Align(
            child: SizedBox(
                height: size.width * 0.5,
                width: size.height * 0.3,
                child: Image.asset(ImageAssets.onBoardingPath)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, size.height* 0.02, 0.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Row(
                  children: [
                    Text(
                      "Hi, My name is ",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      "Oranobot",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
                Text(
                  "I will always be there to help \nand assist you.",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, size.height* 0.015, 0.0, 0.0),
                  child: Text(
                    "Say Start To go to Next.",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )
    ;
  }
}
