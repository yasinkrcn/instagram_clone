// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/asseth_path.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../viewmodel/stories_provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            child: SizedBox(
              height: 95,
              child: Consumer<StoriesProvider>(
                builder: (BuildContext context, StoriesProvider storiesProvider,
                    Widget? child) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.redColor,
                              radius: 35,
                              child: CircleAvatar(
                                radius: 33,
                                backgroundColor: AppColors.whiteColor,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.redColor,
                                      border: Border.all(
                                          color: AppColors.whiteColor,
                                          width: 3),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      storiesProvider.stories[index].imagePath,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                storiesProvider.stories[index].name,
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 12),
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 8,
                        );
                      },
                      itemCount: storiesProvider.stories.length);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Divider(
              height: 1,
              color: AppColors.dividerColor,
              thickness: 1,
            ),
          ),
          SizedBox(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 45,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 230, left: 0),
                      child: Text('Ruffles'),
                    ),
                    SvgPicture.asset(AssetsPath().moreSVG)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    width: 400,
                    child: Image.asset(
                      AssetsPath().imageCarPNG,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 165,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 95,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(AssetsPath().heartSVG),
                                  SvgPicture.asset(AssetsPath().commentSVG),
                                  SvgPicture.asset(AssetsPath().shareSVG),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 130),
                              child: SizedBox(
                                width: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                    ),
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.storyGreyColor),
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.storyGreyColor),
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.storyGreyColor),
                                  ],
                                ),
                              ),
                            ),
                            SvgPicture.asset(AssetsPath().bookmarkSVG),
                          ],
                        ),
                        Text(
                          '100 Likes',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Userna',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more '),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: ClipRRect(
                                child: Image.asset(
                                    AssetsPath().imageSecondGirlPNG),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Add comment',
                                ),
                              ),
                            ),
                            Text('😍'),
                            Text('😭'),
                            SvgPicture.asset(AssetsPath().addEmojiSVG)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
