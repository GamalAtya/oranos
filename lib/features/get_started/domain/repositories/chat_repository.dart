

import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/domain/entities/selection_entitity.dart';

abstract class ChatRepository {
  
  Future<List<Message>> getMessagesList();
  Future<void> sendMessage(Message message);

}