import 'package:flutter/material.dart';
import 'package:instagram_clone/core/keys/global_key.dart';
import 'package:instagram_clone/core/utils/route/router.dart';
import 'package:instagram_clone/feature/auth/view/pages/create_account.dart';
import 'package:instagram_clone/feature/auth/view/pages/login_page.dart';
import 'package:instagram_clone/feature/auth/view/pages/start_page.dart';
import 'package:instagram_clone/feature/home/view/page/home_page.dart';

void main() {
  runApp(const InstagramClone());
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
      home: LoginPage(),
    );
  }
}
