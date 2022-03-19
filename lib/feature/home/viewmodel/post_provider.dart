import 'package:flutter/foundation.dart';
import 'package:instagram_clone/core/constants/asseth_path.dart';
import 'package:instagram_clone/feature/home/domain/entity/album.dart';
import 'package:instagram_clone/feature/home/domain/entity/post.dart';

class PostProvider with ChangeNotifier {
  List<Post> posts = [
    Post(
      imagePath: AssetsPath().imageCarPNG,
    ),
    Post(
      imagePath: AssetsPath().imageGirlPNG,
    ),
    Post(
      imagePath: AssetsPath().imageSecondGirlPNG,
    ),
    Post(
      imagePath: AssetsPath().imageDogPNG
    ),
    Post(
      imagePath: AssetsPath().imageCarPNG
    ),
    Post(
      imagePath: AssetsPath().imageSecondGirlPNG,
    ),
    Post(
      imagePath: AssetsPath().imageGirlPNG
    ),
    Post(
      imagePath: AssetsPath().imageCarPNG
    ),
    Post(
      imagePath: AssetsPath().imageSecondGirlPNG,
    ),
  ];
}
