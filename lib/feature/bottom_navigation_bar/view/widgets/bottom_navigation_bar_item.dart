import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/bottom_navigation_bar/domain/entities/bottom_navigation_bar_state.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final Function() onTap;

  final bool isActive;
  final BottomNavigationBarState barState;

  const CustomBottomNavigationBarItem({
    Key? key,
    required this.onTap,
    this.isActive = false,
    required this.barState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width: ScreenSize().getWidthPercent(1) / 5,
        child: isActive
            ? Center(
                child: SvgPicture.asset(
                  barState.stateToActiveAssetPath(),
                  height: 24,
                ),
              )
            : Center(
                child: SvgPicture.asset(
                  barState.stateToDeactiveAssetPath(),
                  height: 24,
                ),
              ),
      ),
    );
  }
}
