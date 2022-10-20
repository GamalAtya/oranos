

import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/domain/repositories/chat_repository.dart';

class GetMessagesUseCase {
  final ChatRepository chatRepository ;
  GetMessagesUseCase(this.chatRepository);

 Future<List<Message>> call(){
   return chatRepository.getMessagesList();
 }
}