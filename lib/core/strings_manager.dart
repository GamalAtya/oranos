

import 'package:oranos/features/get_started/domain/entities/selection_entitity.dart';

class AppStrings {
  static const sloganText = "Expert From Every Planet";

  static const doNotHaveAccountText = "Don’t have an account?";



  // buttons
  static const getStartedButtonText = "Get Started";
  static const nextButtonText = "Next";
  static const signUpButtonText = "SignUp";
  static const langButtonTextEn = "English";


  List<Selection> selections = [
   Selection(text:"Security"  , selected: false),
   Selection(text:"Supply Chain"  , selected: false),
   Selection(text:"Information Technology"  , selected: false),
   Selection(text:"Human Resource"  , selected: false),
   Selection(text:"Business Research"  , selected: false),
 ];

}
