import 'package:flutter/material.dart';

import '../../../../core/assets_manager.dart';
import '../../../../core/strings_manager.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return  SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.44,
            height: size.height * 0.04,
            child: Image.asset(ImageAssets.appIcon),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(AppStrings.sloganText , style: Theme.of(context).textTheme.headline1),
          )
        ],
      ),
    );
  }
}
