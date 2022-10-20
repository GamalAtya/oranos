
import 'package:flutter/material.dart';
import 'package:oranos/core/colors_manager.dart';

import 'assets_manager.dart';

final appTheme = ThemeData(
  // appBarTheme: AppBarTheme(
  //   centerTitle: true,
  //   elevation: AppSize.s0,
  //   backgroundColor: ColorManager.white,
  //   titleTextStyle: TextStyle(
  //     fontSize: FontSize.s10 * 2,
  //     fontFamily: FontAssets.fontFamilyRoboto,
  //     fontWeight: FontWeightManager.medium,
  //     color: ColorManager.darkBlack,
  //   ),
  //   iconTheme:
  //   IconThemeData(color: ColorManager.darkBlack, size: AppSize.s10 * 1.7),
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     statusBarColor: ColorManager.white,
  //     statusBarIconBrightness: Brightness.dark,
  //   ),
  // ),
  // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //   backgroundColor: ColorManager.black,
  //   elevation: 10.0,
  //   selectedItemColor: ColorManager.orange,
  //   unselectedItemColor: Colors.grey,
  //   type: BottomNavigationBarType.fixed,
  // ),
  primaryColor: ColorManager.primaryColor,

  textTheme:const TextTheme(

    headline1:  TextStyle(
        fontSize: 15,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.semiBold,
        color: ColorManager.grey
    ),
    headline2: TextStyle(
        fontSize: 15,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.semiBold,
        color: ColorManager.black,
        overflow: TextOverflow.ellipsis,
    ),
    headline3: TextStyle(
        fontSize: 15,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.semiBold,
        color: ColorManager.white,
        overflow: TextOverflow.ellipsis
    ),
    headline4:  TextStyle(
        fontSize: 12,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.medium,
        color: ColorManager.black
    ),
    headline5: TextStyle(
        fontSize: 10,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.black
    ),
    headline6: TextStyle(
        fontSize: 10,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.primaryColor
    ),
    headlineLarge:TextStyle(
        fontSize: 10,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.grey
    ) ,
    button:TextStyle(
        fontSize: 15,
        fontFamily: FontAssets.fontFamilyPoppins,
        fontWeight: FontWeightManager.medium,
        color: ColorManager.white
    ),

  ),

  // inputDecorationTheme: InputDecorationTheme(
  //   contentPadding:
  //   const EdgeInsets.only(left: AppPadding.p10, bottom: AppPadding.p10 * 0),
  //
  //   // * text style *
  //   labelStyle:
  //   TextStyle(color: ColorManager.grey, fontSize: FontSize.s10 * 1.6),
  //   hintStyle:
  //   TextStyle(color: ColorManager.grey, fontSize: FontSize.s10 * 1.6),
  //   errorStyle: TextStyle(color: ColorManager.error),
  //
  //   // * border style *
  //   border: const UnderlineInputBorder(
  //     borderSide:
  //     BorderSide(color: ColorManager.primaryColor, width: AppSize.s10 * .2),
  //   ),
  //   enabledBorder: const UnderlineInputBorder(
  //     borderSide:
  //     BorderSide(color: ColorManager.primaryColor, width: AppSize.s10 * .2),
  //   ),
  //   focusedBorder: const UnderlineInputBorder(
  //     borderSide:
  //     BorderSide(color: ColorManager.activeDotColor, width: AppSize.s1_5),
  //   ),
  //   errorBorder: UnderlineInputBorder(
  //     borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
  //   ),
  //   focusedErrorBorder: UnderlineInputBorder(
  //       borderRadius: BorderRadius.circular(50),
  //       borderSide: BorderSide(color: ColorManager.error)),
  // ),
);