import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/constants/shop_list.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/search/view/page/search_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Shop',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.48),
            ),
            SvgPicture.asset(AssetsPath().activeHomeSVG),
            SvgPicture.asset(AssetsPath().menuhamburgerSVG),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 34,
              child: TextFormField(
                textInputAction: TextInputAction.search,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SvgPicture.asset(AssetsPath().deactiveSearchSVG,
                          color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 230, 230, 230),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Search shops'),
                // controller: searchProvider.searchBarController,
                // onChanged: searchProvider.searchArticles,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 34,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade300),
              child: const Center(
                child: Text(
                  'Videos',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: ScreenSize().getHeightPercent(.675),
            width: double.infinity,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 185,
                    mainAxisExtent: 185,
                    childAspectRatio: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1),
                itemCount: shop.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Image.asset(shop[index]);
                }),
          ),
        ],
      ),
    );
  }
}
