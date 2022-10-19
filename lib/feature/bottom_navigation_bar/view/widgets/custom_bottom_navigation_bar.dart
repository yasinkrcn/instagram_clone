// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/domain/entities/_entities_exports.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/view/widgets/bottom_navigation_bar_item.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/view_model/bottom_navigation_bar_controller.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Consumer(
      builder: (BuildContext context, BottomNavigationBarProvider provider,
          Widget? widget) {
        return AnimatedContainer(
          alignment: Alignment.center,
          height: provider.isBottomBarVisible ? 44.5 : 0,
          width: ScreenSize().getWidthPercent(1),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 0.1, color: Colors.black),
            ),
          ),
          curve: Curves.linear,
          duration: const Duration(
            milliseconds: 250,
          ),
          child: Container(
            height: 44.5,
            width: ScreenSize().getWidthPercent(1),
            color: Colors.transparent,
            child: SizedBox(
              width: ScreenSize().getWidthPercent(1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (BottomNavigationBarState state
                      in BottomNavigationBarState.values)
                    CustomBottomNavigationBarItem(
                      onTap: () {
                        provider.routePage(state);
                      },
                      isActive: provider.selectedBarState == state,
                      barState: state,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
