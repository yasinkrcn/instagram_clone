import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/feature/home/view/widgets/home_body.dart';

import '../../../../core/constants/asseth_path.dart';
import '../../../../core/constants/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            SizedBox(child: SvgPicture.asset(AssetsPath().imageLogoSVG)),
          ],
        ),
        actions: [
          SvgPicture.asset(AssetsPath().addSVG),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 14),
            child: SvgPicture.asset(AssetsPath().heartSVG),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(AssetsPath().messengerSVG),
          ),
        ],
        backgroundColor: AppColors.whiteColor,
      ),
      body: const HomeBody(),
      backgroundColor: AppColors.whiteColor,
    );
  }
}
