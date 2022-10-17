import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.4, 0.8],
                      colors: [
                        Color(0xff8A3BEE),
                        Color(0xffF200B7),
                        Color(0xffFE9402)
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: CachedNetworkImage(
                              key: UniqueKey(),
                              fit: BoxFit.cover,
                              imageUrl:
                                  'https://im.haberturk.com/2020/01/21/ver1579609681/2560694_810x458.jpg',
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Center(
                                      child: Icon(Icons.error_outline)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text('data'),
                SizedBox(
                  width: ScreenSize().getWidthPercent(.65),
                ),
                const Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
          CachedNetworkImage(
            key: UniqueKey(),
            fit: BoxFit.cover,
            imageUrl:
                'https://images.hola.com/imagenes/belleza/actualidad/20190604143274/barbara-palvin-cambio-look-flequillo/0-687-44/barbara-palvin-t.jpg',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error_outline)),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AssetsPath().heartSVG),
                  SvgPicture.asset(AssetsPath().commentSVG),
                  SvgPicture.asset(AssetsPath().sendSVG),
                  SizedBox(
                    width: ScreenSize().getWidthPercent(.52),
                  ),
                  SvgPicture.asset(AssetsPath().saveSVG),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Wrap(runSpacing: 4, children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '323 likes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'user  :)',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'View all 54 comments',
                    style: TextStyle(color: Colors.grey.shade600),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.blueAccent,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '2 hours ago',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
