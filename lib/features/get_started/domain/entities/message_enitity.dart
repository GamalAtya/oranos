

import 'package:equatable/equatable.dart';
import 'package:oranos/core/enums.dart';

class Message extends Equatable {
  final String text ;
  final MessageType messageType ;

  const Message({required this.text , required this.messageType });

  @override
  List<Object?> get props => [text , messageType];

}