

import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/domain/repositories/chat_repository.dart';

class SendMessageUseCase {
  final ChatRepository chatRepository ;
  SendMessageUseCase(this.chatRepository);

 Future<void> call(Message message){
   return chatRepository.sendMessage(message);
 }
}