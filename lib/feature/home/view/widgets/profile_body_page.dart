import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/core/constants/asseth_path.dart';
import 'package:instagram_clone/core/constants/theme/app_colors.dart';
import 'package:instagram_clone/feature/home/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

import '../../domain/entity/post.dart';
import '../../viewmodel/post_provider.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
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
                    SizedBox.shrink(),
                    Column(
                      children: [
                        Text(
                          '120',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '500',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text('Followers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '400',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
                Text('Username'),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag'),
                Text(
                  'link goes here',
                  style: TextStyle(color: AppColors.blueColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    height: 35,
                    width: 380,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: AppColors.storyGreyColor, width: 1),
                    ),
                    child: Center(
                        child: Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                SizedBox(
                  height: 95,
                  child: Consumer<HomeProvider>(
                    builder: (BuildContext context, HomeProvider homeProvider,
                        Widget? child) {
                      return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColors.storyGreyColor,
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
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: ClipRRect(
                                        child: Image.asset(
                                          AssetsPath().imageDogPNG,
                                        ),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  homeProvider.albums[index].name,
                                  style: TextStyle(
                                      color: AppColors.blackColor, fontSize: 12),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 8,
                            );
                          },
                          itemCount: homeProvider.albums.length);
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    width: 196,
                    child: SvgPicture.asset(
                      AssetsPath().gridSVG,
                      height: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    width: 196,
                    child: SvgPicture.asset(
                      AssetsPath().mentionsSVG,
                      height: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              height: 275,
              child: Consumer<PostProvider>(
                builder: (BuildContext context, PostProvider postProvider,
                    Widget? child) {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                    ),
                    itemCount: postProvider.posts.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(1),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Container(
                            color: AppColors.blueColor,
                            alignment: Alignment.center,
                            child: Image.asset(
                              postProvider.posts[index].imagePath,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
