import 'package:flutter/cupertino.dart';

import 'package:instagram_clone/feature/auth/view/pages/create_account_page.dart';
import 'package:instagram_clone/feature/auth/view/pages/login_page.dart';
import 'package:instagram_clone/feature/auth/view/pages/start_page.dart';
import 'package:instagram_clone/feature/home/view/page/home_page.dart';
import 'package:instagram_clone/feature/profile/view/page/profile_page.dart';
import 'package:instagram_clone/feature/reels/view/page/reels_page.dart';
import 'package:instagram_clone/feature/search/view/page/search_page.dart';
import 'package:instagram_clone/feature/shop/view/page/shop_page.dart';

class PageRoutes {
  static const String createAccount = "/createAccountPage";
  static const String loginPage = "/loginPage";
  static const String startPage = "/startPage";
  static const String homePage = "/homePage";
  static const String profilePage = "/profilePage";
  static const String searchPage = "/searchPage";
  static const String shopPage = "/shopPage";
  static const String reelsPage = "/reelsPage";
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PageRoutes.createAccount:
      return CupertinoPageRoute(builder: (_) => const CreateAccountPage());
    case PageRoutes.loginPage:
      return CupertinoPageRoute(builder: (_) => const LoginPage());
    case PageRoutes.startPage:
      return CupertinoPageRoute(builder: (_) => const StartPage());

    case PageRoutes.homePage:
      return CupertinoPageRoute(builder: (_) => const HomePage());
    case PageRoutes.profilePage:
      return CupertinoPageRoute(builder: (_) => const ProfilePage());
    case PageRoutes.searchPage:
      return CupertinoPageRoute(builder: (_) => const SearchPage());
    case PageRoutes.shopPage:
      return CupertinoPageRoute(builder: (_) => const ShopPage());
    case PageRoutes.reelsPage:
      return CupertinoPageRoute(builder: (_) => const ReelsPage());

    default:
      return CupertinoPageRoute(builder: (_) => const StartPage());
  }
}
