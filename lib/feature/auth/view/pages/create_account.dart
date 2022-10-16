import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/screen_size.dart';
import 'package:instagram_clone/feature/auth/view/widgets/app_button.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: ScreenSize().getHeightPercent(.1),
            ),
            const CircleAvatar(radius: 50),
            const SizedBox(height: 12,), 
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 45,
                      child: TabBar(
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              text: 'PHONE',
                            ),
                            Tab(text: 'EMAIL')
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      // color: Colors.yellow,
                      height: 250,
                      width: 500,
                      child: TabBarView(children: [
                        Column(
                          children: [
                            Container(
                              width: ScreenSize().getWidthPercent(.9),
                              height: 50,
                              constraints: const BoxConstraints(
                                  minHeight: 46, maxHeight: 200),
                              child: TextFormField(
                                controller: TextEditingController(),
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  hintText: 'Phone',

                                  prefixIcon: TextButton(
                                      onPressed: () {},
                                      child: SizedBox(
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'TR +90',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black
                                                          .withOpacity(.6)),
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Container(
                                                  height: 28,
                                                  width: 1,
                                                  color: Colors.grey,
                                                )
                                              ],
                                            ),
                                          ))),
                                  filled: true,
                                  // fillColor: fillColor ?? Colors.white,

                                  border: const OutlineInputBorder(),
                                  // focusedBorder: focusedBorder,
                                  // enabledBorder: enabledBorder,
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.send,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              'You may receive SMS notifications from us for security and login purposes',
                              style: TextStyle(color: Colors.grey.shade600),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const AppButton(text: 'Next')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: ScreenSize().getWidthPercent(.9),
                              height: 50,
                              child: TextFormField(
                                controller: TextEditingController(),
                                // onChanged: onChanged,
                                // obscureText: isObscure,
                                // validator: validator,
                                textAlignVertical: TextAlignVertical.bottom,

                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                  // prefixIcon: prefixIcon,
                                  // suffixIcon: suffixIcon,
                                  filled: true,
                                  // fillColor: fillColor ?? Colors.white,

                                  border: OutlineInputBorder(),
                                  // focusedBorder: focusedBorder,
                                  // enabledBorder: enabledBorder,
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.send,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const AppButton(text: 'Next')
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
