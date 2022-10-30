import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(children: [
          Container(
            width: ScreenSize().getWidthPercent(1),
            color: Colors.yellow,
            child: CachedNetworkImage(
              key: UniqueKey(),
              fit: BoxFit.cover,
              imageUrl:
                  'https://www.teahub.io/photos/full/51-512698_iphone-xr-dua-lipa.jpg',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error_outline)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Reels',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      AssetsPath().addSVG,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 12,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: CachedNetworkImage(
                                  key: UniqueKey(),
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg',
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                          child: Icon(Icons.error_outline)),
                                ),
                              ),
                            ),
                            const Text(
                              'username',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 32,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.white)),
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Life is short...',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              width: 40,
                              child: Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: [
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: CachedNetworkImage(
                                        key: UniqueKey(),
                                        fit: BoxFit.cover,
                                        imageUrl:
                                            'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Center(
                                                child:
                                                    Icon(Icons.error_outline)),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: CachedNetworkImage(
                                            key: UniqueKey(),
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://images.hdqwalls.com/download/beautiful-blue-eyes-girl-depth-of-field-ar-1280x2120.jpg',
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget: (context, url,
                                                    error) =>
                                                const Center(
                                                    child: Icon(
                                                        Icons.error_outline)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: CachedNetworkImage(
                                            key: UniqueKey(),
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://wallpapercave.com/uwp/uwp1535836.png',
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget: (context, url,
                                                    error) =>
                                                const Center(
                                                    child: Icon(
                                                        Icons.error_outline)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Liked by ',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12),
                                ),
                                Text(
                                  'user ',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'and ',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12),
                                ),
                                Text(
                                  '234,567 others ',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.record_voice_over,
                              color: Colors.white,
                            ),
                            Text(
                              ' music name ' '.' ' Original audio',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.vertical,
                      spacing: 20,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                AssetsPath().heartSVG,
                                height: 22,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                '1,241',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                            child: Column(
                          children: [
                            SvgPicture.asset(
                              AssetsPath().commentSVG,
                              height: 25,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              '23',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                        SvgPicture.asset(
                          AssetsPath().sendSVG,
                          height: 22,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 22,
                        ),

                        Container(
                          height: 36,
                          width: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white, width: 2.3),
                          ),
                          child: CachedNetworkImage(
                            key: UniqueKey(),
                            fit: BoxFit.cover,
                            imageUrl:
                                'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error_outline)),
                          ),
                        ),
                        // SvgPicture.asset(AssetsPath().activeHomeSVG),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
