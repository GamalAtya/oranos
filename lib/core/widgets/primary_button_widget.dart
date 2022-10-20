
import 'package:flutter/material.dart';

import '../colors_manager.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onPressed ;
  final String text ;
  final double width ;
  final double height ;
  const PrimaryButtonWidget({required this.width , required this.height ,required this.onPressed ,required this.text , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorManager.primaryColor)
          ),
          child: Text(text , style: Theme.of(context).textTheme.button,)),
    );
  }
}
