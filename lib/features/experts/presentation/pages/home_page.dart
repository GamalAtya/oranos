import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/features/experts/presentation/bloc/experts_bloc.dart';
import 'package:oranos/features/experts/presentation/pages/home_tap.dart';
import 'package:oranos/features/experts/presentation/pages/profile_tap.dart';
import 'package:oranos/features/experts/presentation/pages/star_tap.dart';
import 'package:oranos/features/experts/presentation/pages/wallet_tap.dart';

import '../../../../core/colors_manager.dart';
import 'package:oranos/injection_container.dart' as di;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
   int _index = 0 ;
   final  List<Widget> taps = const [HomeTap() , StarTap() , WalletTap() , ProfileTap()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return BlocProvider<ExpertsBloc>(
      create: (context) => di.sl<ExpertsBloc>()..add(GetExpertsEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
              height: 20,
              width: 50,
              child: Image.asset(ImageAssets.appIcon)),
          centerTitle: true,
          backgroundColor: ColorManager.white,
          leadingWidth: 30,
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.grey
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search , color: ColorManager.black ,))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Image.asset(ImageAssets.home) , label: ""),
            BottomNavigationBarItem(icon: Image.asset(ImageAssets.star) , label: ""),
            BottomNavigationBarItem(icon: Image.asset(ImageAssets.wallet) , label: ""),
            BottomNavigationBarItem(icon: Image.asset(ImageAssets.profile) , label: ""),
          ],
          onTap: (index) => setState(() {_index = index ;}),
        ),
        body: taps[_index],
      ),
    );
  }
}
