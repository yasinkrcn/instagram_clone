// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/core/constants/asseth_path.dart';
import 'package:instagram_clone/core/constants/theme/app_colors.dart';
import 'package:instagram_clone/feature/home/view/widgets/profile_body_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text(
              'username',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AssetsPath().bottomVectorSVG),
            )
          ],
        ),
        actions: [
          SvgPicture.asset(AssetsPath().addSVG),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 14),
            child: SvgPicture.asset(AssetsPath().burgerSVG),
          ),
        ],
        backgroundColor: AppColors.whiteColor,
      ),
      body: ProfileBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(AssetsPath().homeSVG),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(AssetsPath().searchSVG),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(AssetsPath().reelsSVG),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(AssetsPath().shopSVG),
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: SizedBox(
              height: 30,
              width: 30,
              child: CircleAvatar(
                      backgroundColor: AppColors.redColor,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.whiteColor,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.redColor,
                              border: Border.all(
                                  color: AppColors.whiteColor, width: 3),
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                            child: Image.asset(
                              AssetsPath().imageDogPNG,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ],
        backgroundColor: AppColors.whiteColor, 
      ),
    );
  }
}
