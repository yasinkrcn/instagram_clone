import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/route/route_manager.dart';
import 'package:instagram_clone/core/utils/route/router.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.lock_outlined),
                    const Text(
                      'username',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    SvgPicture.asset(
                      AssetsPath().addSVG,
                    ),
                    SvgPicture.asset(
                      AssetsPath().menuhamburgerSVG,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 275,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              foregroundImage: NetworkImage(
                                  'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg'),
                            ),
                            Column(
                              children: const [
                                Text(
                                  '366',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                                Text('Posts'),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '7,987',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                                Text('Followers'),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '128',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                                Text('Following'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32,
                              width: ScreenSize().getWidthPercent(.8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              child: const Center(
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Container(
                              height: 32,
                              width: ScreenSize().getWidthPercent(.085),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade300),
                              child: const Center(
                                child: Icon(
                                  Icons.person_add_rounded,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 31,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                          radius: 29,
                                          backgroundColor: Colors.white,
                                          foregroundImage: NetworkImage(
                                              'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('life')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 31,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                          radius: 29,
                                          backgroundColor: Colors.white,
                                          foregroundImage: NetworkImage(
                                              'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('is')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 31,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                          radius: 29,
                                          backgroundColor: Colors.white,
                                          foregroundImage: NetworkImage(
                                              'https://i.pinimg.com/originals/19/a7/48/19a748a0fe255f082318a3b4b5dac78f.jpg')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('short')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 31,
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 32,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('New')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //TABBAR

                DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                        child: TabBar(
                            indicatorColor: Colors.black,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                child:
                                    SvgPicture.asset(AssetsPath().profile1SVG),
                              ),
                              Tab(
                                child:
                                    SvgPicture.asset(AssetsPath().profile2SVG),
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: SizedBox(
                          height: ScreenSize().getHeightPercent(.31),
                          width: 500,
                          child: TabBarView(children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: ScreenSize().getHeightPercent(.31),
                                  width: 500,
                                  child: GridView.builder(
                                    itemCount: 7,
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: ScreenSize()
                                                .getWidthPercent(.4),
                                            crossAxisSpacing: 1,
                                            childAspectRatio: 1,
                                            mainAxisSpacing: 1),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () => Go.to.page(
                                          PageRoutes.postsPage,
                                        ),
                                        child: CachedNetworkImage(
                                          key: UniqueKey(),

                                          // height: 200,
                                          // width: double.infinity,

                                          fit: BoxFit.cover,
                                          imageUrl:
                                              'https://images.hola.com/imagenes/belleza/actualidad/20190604143274/barbara-palvin-cambio-look-flequillo/0-687-44/barbara-palvin-t.jpg',
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator(),

                                          errorWidget: (context, url, error) =>
                                              const Center(
                                                  child: Icon(
                                                      Icons.error_outline)),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: ScreenSize().getHeightPercent(.3965),
                                  width: 500,
                                  child: GridView.builder(
                                    itemCount: 7,
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: ScreenSize()
                                                .getWidthPercent(.4),
                                            crossAxisSpacing: 1,
                                            childAspectRatio: 1,
                                            mainAxisSpacing: 1),
                                    itemBuilder: (context, index) {
                                      return CachedNetworkImage(
                                        key: UniqueKey(),

                                        // height: 200,
                                        // width: double.infinity,

                                        fit: BoxFit.cover,
                                        imageUrl:
                                            'https://images.hola.com/imagenes/belleza/actualidad/20190604143274/barbara-palvin-cambio-look-flequillo/0-687-44/barbara-palvin-t.jpg',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),

                                        errorWidget: (context, url, error) =>
                                            const Center(
                                                child:
                                                    Icon(Icons.error_outline)),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ),
                      )
                    ],
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
