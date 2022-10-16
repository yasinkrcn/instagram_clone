import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/home/view/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(AssetsPath().addSVG),
                  Align(
                      alignment: const Alignment(1, 0.2),
                      child: SvgPicture.asset(AssetsPath().logoSVG)),
                  const SizedBox(
                    width: 60,
                  ),
                  SvgPicture.asset(
                    AssetsPath().searchSVG,
                    height: 22,
                  ),
                  SvgPicture.asset(AssetsPath().heartSVG),
                  SvgPicture.asset(AssetsPath().sendSVG),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  // color: Colors.blue,

                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 34,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 32,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('data')
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.grey,
                  thickness: 0.25,
                ),
                SizedBox(
                  height: ScreenSize().getHeightPercent(.7155),
                  child: ListView.builder(
                    
                    itemBuilder: (context, index) {
                      return const PostCard();
                    },
                    itemCount: 4,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
