import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/home/view/widgets/post_card.dart';
import 'package:instagram_clone/feature/home/view/widgets/stories_card.dart';
import 'package:instagram_clone/feature/home/view/widgets/story_card.dart';
import 'package:instagram_clone/feature/search/view/page/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleSpacing: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsPath().addSVG),
              SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SvgPicture.asset(
                      AssetsPath().logoSVG,
                      height: 31,
                    ),
                  )),
              const SizedBox(
                width: 60,
              ),
              SvgPicture.asset(
                AssetsPath().deactiveSearchSVG,
                height: 22,
              ),
              SvgPicture.asset(AssetsPath().heartSVG),
              SvgPicture.asset(AssetsPath().sendSVG),
            ],
          ),
          toolbarHeight: 55,
        ),
        body: ListView.builder(
          itemCount: discover.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Stories();
            }

            return PostCard(
              image: discover[index - 1],
            );
          },
        ));
  }
}
