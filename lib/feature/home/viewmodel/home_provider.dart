import 'package:flutter/foundation.dart';
import 'package:instagram_clone/feature/home/domain/entity/album.dart';

class HomeProvider with ChangeNotifier {
  List<Story> albums = [
    Story(
        imagePath: "https://picsum.photos/id/223/200/300",
        name: "Story"),
    Story(imagePath: "https://picsum.photos/id/23/200/300", name: "Story1"),
    Story(imagePath: "https://picsum.photos/id/22/200/300", name: "Story2"),
    Story(imagePath: "https://picsum.photos/id/44/200/300", name: "Story3"),
    Story(imagePath: "https://picsum.photos/id/55/200/300", name: "Story4"),
    Story(imagePath: "https://picsum.photos/id/66/200/300", name: "Story5"),
  ];
}
