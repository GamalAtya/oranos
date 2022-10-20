

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/core/colors_manager.dart';
import 'package:oranos/features/get_started/domain/entities/selection_entitity.dart';
import 'package:oranos/features/get_started/presentation/bloc/chat_bloc.dart';


class SelectionWidget extends StatelessWidget {
 final  Selection selection ;
  final  Function(bool?) onChanged ;
  const  SelectionWidget({required this.selection , required this.onChanged , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SizedBox(
      height: size.height * 0.04,
      child: Row(
        children: [
          Checkbox(
              value: selection.selected ,
              onChanged:onChanged,
              activeColor: ColorManager.primaryColor,
              shape: const CircleBorder(),
           ),
          Text(selection.text , style: Theme.of(context).textTheme.headline2,)
        ],
      ),
    );
  }
}
