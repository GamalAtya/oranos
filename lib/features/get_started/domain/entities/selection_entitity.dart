

import 'package:equatable/equatable.dart';

class Selection extends Equatable {

  String text ;
  bool selected;


   Selection({ required this.text, required this.selected});

  @override
  List<Object?> get props => [text , selected];
}