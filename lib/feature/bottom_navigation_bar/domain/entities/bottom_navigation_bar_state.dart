// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/feature/home/view/page/home_page.dart';
import 'package:instagram_clone/feature/profile/view/page/profile_page.dart';
import 'package:instagram_clone/feature/reels/view/page/reels_page.dart';
import 'package:instagram_clone/feature/search/view/page/search_page.dart';
import 'package:instagram_clone/feature/shop/view/page/shop_page.dart';

enum BottomNavigationBarState { HOME, SEARCH, REELS, SHOP, PROFILE }

extension BottomNavigationBarStateExtension on BottomNavigationBarState {
  int stateToPageIndex() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return 0;
      case BottomNavigationBarState.SEARCH:
        return 1;
      case BottomNavigationBarState.REELS:
        return 2;
      case BottomNavigationBarState.SHOP:
        return 3;

      case BottomNavigationBarState.PROFILE:
        return 4;
    }
  }

  BottomNavigationBarState indexToState(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return BottomNavigationBarState.HOME;
      case 1:
        return BottomNavigationBarState.SEARCH;
      case 2:
        return BottomNavigationBarState.REELS;
      case 3:
        return BottomNavigationBarState.SHOP;
      case 4:
        return BottomNavigationBarState.PROFILE;
      default:
        throw [];
    }
  }



  String stateToTitle() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return 'Home';
      case BottomNavigationBarState.SEARCH:
        return 'Search';
      case BottomNavigationBarState.REELS:
        return 'Reels';
      case BottomNavigationBarState.SHOP:
        return 'Shop';

      case BottomNavigationBarState.PROFILE:
        return 'Profile';
    }
  }

  String stateToDeactiveAssetPath() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return AssetsPath().deactiveHomeSVG;
      case BottomNavigationBarState.SEARCH:
        return AssetsPath().deactiveSearchSVG;
      case BottomNavigationBarState.REELS:
        return AssetsPath().deactiveReelsSVG;
      case BottomNavigationBarState.SHOP:
        return AssetsPath().deactiveShopSVG;

      case BottomNavigationBarState.PROFILE:
        return AssetsPath().deactiveProfileSVG;
    }
  }

  String stateToActiveAssetPath() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return AssetsPath().activeHomeSVG;
      case BottomNavigationBarState.SEARCH:
        return AssetsPath().activeSearchSVG;
      case BottomNavigationBarState.REELS:
        return AssetsPath().activeReelsSVG;
      case BottomNavigationBarState.SHOP:
        return AssetsPath().activeShopSVG;

      case BottomNavigationBarState.PROFILE:
        return AssetsPath().activeProfileSVG;
    }
  }

  Widget buildBody() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return const HomePage();
      case BottomNavigationBarState.SEARCH:
        return const SearchPage();
      case BottomNavigationBarState.REELS:
        return const ReelsPage();
      case BottomNavigationBarState.SHOP:
        return const ShopPage();

      case BottomNavigationBarState.PROFILE:
        return const ProfilePage();
    }
  }

  // PreferredSizeWidget? buildAppBar() {
  //   switch (this) {
  //     case BottomNavigationBarState.HOME:
  //       return const HomePageAppBar();

  //     case BottomNavigationBarState.MESSAGE:
  //       return const EmptyMessagePageAppBar();

  //     case BottomNavigationBarState.SEARCH:
  //       return const SearchPageAppBar();
  //     case BottomNavigationBarState.PROFILE:
  //       return const ProfilePageAppBar();
  //   }
  // }

  Color pageBackGroundColor() {
    switch (this) {
      case BottomNavigationBarState.HOME:
        return Colors.white;
      case BottomNavigationBarState.SEARCH:
        return Colors.white;
      case BottomNavigationBarState.REELS:
        return Colors.white;
      case BottomNavigationBarState.SHOP:
        return Colors.white;
      case BottomNavigationBarState.PROFILE:
        return Colors.white;
    }
  }
}
