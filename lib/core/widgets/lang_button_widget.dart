

import 'package:flutter/material.dart';

import '../strings_manager.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.language),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(AppStrings.langButtonTextEn ,style: Theme.of(context).textTheme.headline4,),
          ),
        ],
      ),
    );
  }
}
