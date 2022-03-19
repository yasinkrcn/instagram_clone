/*import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/asseth_path.dart';
import 'package:instagram_clone/core/constants/theme/app_colors.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({Key? key}) : super(key: key);

  final String image;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.redColor,
      radius: 43,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: AppColors.whiteColor,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.redColor,
              border: Border.all(color: AppColors.whiteColor, width: 3),
              borderRadius: BorderRadius.circular(50)),
          child: ClipRRect(
            child: Image.asset(
              AssetsPath().imageDogSVG,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}*/
