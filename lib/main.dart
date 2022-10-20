import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/features/experts/presentation/pages/home_page.dart';
import 'package:oranos/features/get_started/presentation/bloc/chat_bloc.dart';
import 'package:oranos/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'injection_container.dart' as di;
import 'core/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (context) => di.sl<ChatBloc>()..add(GetMessageEvent()),
      child: MaterialApp(
          title: 'Oranos',
          debugShowCheckedModeBanner: false,
          theme: appTheme,
         // home page
          // home: const HomePage()
          home: const OnBoardingPage()
      ),
    );
  }
}
