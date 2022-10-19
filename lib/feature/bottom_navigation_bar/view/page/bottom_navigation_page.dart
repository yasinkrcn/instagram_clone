import 'package:flutter/material.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/domain/entities/_entities_exports.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/view_model/bottom_navigation_bar_controller.dart';
import 'package:provider/provider.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        return true;
      }),
      child: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            // appBar: //we are not use app bar ,

            backgroundColor: Colors.white,

            body: provider.selectedBarState.buildBody(),

            bottomNavigationBar: CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
