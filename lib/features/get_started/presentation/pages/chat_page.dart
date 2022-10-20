import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/core/enums.dart';
import 'package:oranos/features/get_started/domain/entities/message_enitity.dart';
import 'package:oranos/features/get_started/presentation/bloc/chat_bloc.dart';
import 'package:oranos/features/get_started/presentation/widgets/message_widget.dart';
import 'package:oranos/features/get_started/presentation/widgets/selection_widget.dart';
import '../../../../core/colors_manager.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              height: size.height,
              width: size.width,
              color: ColorManager.white,
              child: Column(
                children: [
                  SizedBox(
                    child: BlocBuilder<ChatBloc, ChatState>(
                      builder: (context, state) {
                        if (state is GetMessagesState) {
                          return Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.65,
                                child: SingleChildScrollView(

                                  child: Column(
                                    children: [
                                      for (Message message in state.messagesList)
                                        MessageWidget(message: message),
                                    ],
                                  ),
                                ),
                              ),

                               SizedBox(
                                height: size.height * 0.2,
                                child: Column(
                                  children: [
                                    for (int i = 0;
                                        i < state.selectionsList.length;
                                        i++)
                                      SelectionWidget(
                                        selection: state.selectionsList[i],
                                        onChanged: (selected){
                                          BlocProvider.of<ChatBloc>(context).add(SelectEvent(index: i));
                                        } ,
                                      )
                                  ],
                                ),
                              )
                            ],
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.height *0.05,
                    child: Center(child: Text("Say Done, Or Press Send to Apply" , style:  Theme.of(context).textTheme.headline1,)),
                  ),
                  SizedBox(
                    width: size.width *0.9,
                    height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorManager.secondaryColor,
                            border: Border.all(color:ColorManager.grey )
                          ),
                          child: TextField(
                            controller: messageController,
                            decoration:  InputDecoration(
                              prefixIcon: const Icon(Icons.language),
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              suffix: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                                child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Center(child: SvgPicture.asset(ImageAssets.voiceIcon , fit: BoxFit.cover,))),
                              )
                            ),
                          ),
                        ) ,
                        IconButton(
                            icon: SvgPicture.asset(ImageAssets.sendIcon),
                          onPressed: () {
                              final Message message = Message(text: messageController.text, messageType: MessageType.user);
                              BlocProvider.of<ChatBloc>(context).add(SendMessageEvent(message: message));
                          },)
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
