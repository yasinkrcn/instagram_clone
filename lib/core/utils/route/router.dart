
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feature/auth/view/pages/start_page.dart';

class PageRoutes {
  static const String base = '/bsadece /';
  static const String example = "/examplaRoute";
  static const String signUpPage = "/signUpPage";
  static const String loginPage = "/loginPage";
  static const String bottomNavBar = "/bottomNavBar";
  static const String forgotPasswordPage = "/forgotPasswordPage";
  static const String checkYourEmailPage = "/checkYourEmailPage";
  static const String selectLearnPage = "/selectLearnPage";
  static const String selectTeachPage = "/selectTeachPage";
  static const String successRegisterPage = "/successRegisterPage";
  static const String editProfilePage = "/editProfilePage";
  static const String changePasswordPage = "/changePasswordPage";
  static const String userDetailPage = "/userDetailPage";
  static const String emptyMessagePage = "/emptyMessagePage";
  static const String messageBoxPage = "/messageBoxPage";
  static const String chatDetailPage = "/chatDetailPage";
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PageRoutes.signUpPage:
      return CupertinoPageRoute(builder: (_) => StartPage());


    default:
      return CupertinoPageRoute(builder: (_) => const StartPage());
  }
}
