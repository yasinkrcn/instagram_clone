import 'package:flutter/foundation.dart';
import 'package:instagram_clone/core/constants/asseth_path.dart';
import '../domain/entity/stories.dart';

class StoriesProvider with ChangeNotifier {
  List<Stories> stories = [
    Stories(
      imagePath: AssetsPath().imageCarPNG,
      name: 'story1',
    ),
    Stories(
      imagePath: AssetsPath().imageGirlPNG,
      name: 'story2',
    ),
    Stories(
      imagePath: AssetsPath().imageSecondGirlPNG,
      name: 'story3',
    ),
    Stories(
      imagePath: AssetsPath().imageDogPNG,
      name: 'story4',
    ),
    Stories(
      imagePath: AssetsPath().imageCarPNG,
      name: 'story5',
    ),
    Stories(
      imagePath: AssetsPath().imageGirlPNG,
      name: 'story6',
    ),
    Stories(
      imagePath: AssetsPath().imageSecondGirlPNG,
      name: 'story7',
    ),
  ];
}
