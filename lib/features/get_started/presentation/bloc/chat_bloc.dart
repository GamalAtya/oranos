
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:oranos/features/get_started/domain/entities/selection_entitity.dart';

import '../../../../core/strings_manager.dart';
import '../../domain/entities/message_enitity.dart';
import '../../domain/use_cases/get_messages_use_case.dart';
import '../../domain/use_cases/send_message_use_case.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetMessagesUseCase getMessagesUseCase;
  final SendMessageUseCase sendMessageUseCase;
  List<Selection> selectionList = AppStrings().selections ;
  ChatBloc({required this.getMessagesUseCase , required this.sendMessageUseCase}) : super(ChatInitial()) {
    on<ChatEvent>((event, emit) async{
      if(event is GetMessageEvent){
       List<Message> messagesList = await getMessagesUseCase();
       emit(GetMessagesState(messagesList: messagesList , selectionsList: selectionList));
      }else if(event is SendMessageEvent){
        await sendMessageUseCase(event.message);
        List<Message> messagesList = await getMessagesUseCase();
        emit(GetMessagesState(messagesList: messagesList ,selectionsList: selectionList));
      }else if( event is SelectEvent){
        selectionList[event.index].selected = !selectionList[event.index].selected ;
        List<Message> messagesList = await getMessagesUseCase();
        emit(GetMessagesState(messagesList: messagesList, selectionsList: selectionList));
      }
    });
  }
}
