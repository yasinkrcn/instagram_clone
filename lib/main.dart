import 'package:flutter/material.dart';
import 'package:instagram_clone/feature/home/view/page/home_page.dart';
import 'package:provider/provider.dart';
import 'feature/home/view/page/profile_page.dart';
import 'feature/home/viewmodel/home_provider.dart';
import 'feature/home/viewmodel/post_provider.dart';
import 'feature/home/viewmodel/stories_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),
        ChangeNotifierProvider<PostProvider>(
            create: (context) => PostProvider()),
        ChangeNotifierProvider<StoriesProvider>(
            create: (context) => StoriesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
