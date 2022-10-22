import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 4,
                left: 8,
                right: 8,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 72,
            width: 72,
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
                height: 68,
                width: 68,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Container(
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
                            'https://im.haberturk.com/2020/01/21/ver1579609681/2560694_810x458.jpg',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Center(child: Icon(Icons.error_outline)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
         
          const Text('data',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
