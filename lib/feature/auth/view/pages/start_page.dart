import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/auth/view/widgets/app_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'English',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey.shade700,
                )
              ],
            ),
            SizedBox(
              height: ScreenSize().getHeightPercent(.3),
            ),
            SvgPicture.asset(AssetsPath().logoSVG,
                height: ScreenSize().getHeightPercent(.08)),
            const SizedBox(
              height: 36,
            ),
            const AppButton(
              text: 'Create new account'
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Log in',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
