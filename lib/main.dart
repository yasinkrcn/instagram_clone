import 'package:instagram_clone/core/constants/main_provider_list%20copy.dart';
import 'package:instagram_clone/feature/profile/view/page/posts_page.dart';
import 'package:provider/provider.dart';

import '/core/init/injection_container.dart' as locator;
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/keys/global_key.dart';
import 'package:instagram_clone/core/utils/route/router.dart';
import 'package:instagram_clone/feature/auth/view/pages/create_account_page.dart';
import 'package:instagram_clone/feature/auth/view/pages/login_page.dart';
import 'package:instagram_clone/feature/auth/view/pages/start_page.dart';
import 'package:instagram_clone/feature/home/view/page/home_page.dart';
import 'package:instagram_clone/feature/profile/view/page/profile_page.dart';

import 'feature/bottom_navigation_bar/view/page/bottom_navigation_page.dart';

void main() async {
  await locator.init();
  runApp(
    MultiProvider(
      providers: MainProviderList.getMainProviderList(),
      child: const InstagramClone(),
    ),
  );
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      navigatorKey: GlobalContextKey.instance.globalKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationPage(),
    );
  }
}
