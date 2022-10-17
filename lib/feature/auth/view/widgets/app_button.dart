import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';

class AppButton extends StatelessWidget {
  final String text;
  const AppButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: ScreenSize().getWidthPercent(.9),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
