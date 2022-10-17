import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/core/constants/assets_paths.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/auth/view/widgets/app_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey.shade700,
                  size: 16,
                )
              ],
            ),
            SizedBox(
              height: ScreenSize().getHeightPercent(.165),
            ),
            SvgPicture.asset(AssetsPath().logoSVG,
                height: ScreenSize().getHeightPercent(.08)),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.9),
              height: 48,
              child: TextFormField(
                controller: TextEditingController(),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: const InputDecoration(
                  hintText: 'Phone number, email or username',
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.send,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: ScreenSize().getWidthPercent(.9),
              height: 48,
              child: TextFormField(
                controller: TextEditingController(),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.send,
                style: const TextStyle(fontSize: 16),
              ),

              //TODO: for password text field add obcure icon
            ),
            const SizedBox(
              height: 16,
            ),
            const AppButton(text: 'Log in'),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your login details? ',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                ),
                Text(
                  'Get help logging in.',
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: ScreenSize().getWidthPercent(.4),
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: ScreenSize().getWidthPercent(.4),
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsPath().addSVG),

                //TODO: add facebook logo
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Log in with Facebook',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: ScreenSize().getHeightPercent(.115),
            ),
            const Divider(
              thickness: 1.3,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",
                    style:
                        TextStyle(fontSize: 12, color: Colors.grey.shade700)),
                Text(
                  'Sign up.',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
