import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 36,
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AssetsPath().deactiveSearchSVG),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 230, 230, 230),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Search'),
                  // controller: searchProvider.searchBarController,
                  // onChanged: searchProvider.searchArticles,
                ),
              ),
            ),
            Container(
        
              height: 525,
              width: double.infinity,
              child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(2, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => CachedNetworkImage(
                          key: UniqueKey(),
                          fit: BoxFit.cover,
                          imageUrl: discover[index],
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Center(child: Icon(Icons.error_outline)),
                        ),
                    childCount: discover.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> discover = [
  'https://m.media-amazon.com/images/M/MV5BZjBiOGIyY2YtOTA3OC00YzY1LThkYjktMGRkYTNhNTExY2I2XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg',
  'https://www.indyturk.com/sites/default/files/article/main_image/2022/08/22/995451-137741206.jpg',
  'https://iaaspr.tmgrup.com.tr/639a35/0/0/0/0/1020/1020?u=https://iaspr.tmgrup.com.tr/2022/08/21/house-of-the-dragon-ne-zaman-basliyor-nerede-yayinlanacak-house-of-the-dragon-konusu-1-bolum-fragmani-izle-1661083966200.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2yvFbH0ZgD2ScqzBevGIwzEOILqzjxE1-RcDPgBjTZ6bxx4qI3WraayXVOUATI4h5J3Q&usqp=CAU',
  'https://sm.ign.com/ign_tr/cover/g/game-of-th/game-of-thrones-house-of-the-dragon_6q4k.jpg',
  'https://i.pinimg.com/736x/bf/1c/56/bf1c56608dce29f7c9302b17c9839e92.jpg',
  'https://i.guim.co.uk/img/media/cf9ebf26ad4a587447d8698589ffa9655fb58612/0_308_6000_3600/master/6000.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6d2f3cd2cbfd123d9d4f3d4cef5a3c5b',
  'https://22dakika.org/wp-content/uploads/2022/09/FR8bjlHX0AgJgth.jpg', 
  'https://22dakika.org/wp-content/uploads/2022/09/FR8dSfQX0AADG_g.jpg', 
'https://22dakika.org/wp-content/uploads/2022/09/FR8dcatWYAAQJdC.jpg',
'https://m.media-amazon.com/images/M/MV5BZjBiOGIyY2YtOTA3OC00YzY1LThkYjktMGRkYTNhNTExY2I2XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg',
  'https://www.indyturk.com/sites/default/files/article/main_image/2022/08/22/995451-137741206.jpg',
  'https://iaaspr.tmgrup.com.tr/639a35/0/0/0/0/1020/1020?u=https://iaspr.tmgrup.com.tr/2022/08/21/house-of-the-dragon-ne-zaman-basliyor-nerede-yayinlanacak-house-of-the-dragon-konusu-1-bolum-fragmani-izle-1661083966200.jpg',
  
  'https://sm.ign.com/ign_tr/cover/g/game-of-th/game-of-thrones-house-of-the-dragon_6q4k.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3g8kmAywE-mnDYFTwoMHSFnirZ4M7CzSnJ6o5cpjKFSajTrpPJcff_v3LyUJu05xm2qs&usqp=CAU',
  'https://i.guim.co.uk/img/media/cf9ebf26ad4a587447d8698589ffa9655fb58612/0_308_6000_3600/master/6000.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6d2f3cd2cbfd123d9d4f3d4cef5a3c5b',
  'https://22dakika.org/wp-content/uploads/2022/09/FR8bjlHX0AgJgth.jpg', 
  'https://22dakika.org/wp-content/uploads/2022/09/FR8dSfQX0AADG_g.jpg', 
'https://22dakika.org/wp-content/uploads/2022/09/FR8dcatWYAAQJdC.jpg',
'https://www.pinkvilla.com/imageresize/house_of_the_dragon_ep_3.jpeg?width=752&t=pvorg',
];
