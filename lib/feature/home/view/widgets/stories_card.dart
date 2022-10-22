import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feature/home/view/widgets/story_card.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 4,
                left: 8,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 62,
                        width: 62,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
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
                                const Center(child: Icon(Icons.error_outline)),
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.blue,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Your story',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            );
          }

          return const StoryCard();
        },
        scrollDirection: Axis.horizontal,
        itemCount: 10,
      ),
    );
  }
}
