import 'package:flutter/material.dart';
import 'package:ice_cream_shop/started_page/sign_in_page.dart';
import 'package:ice_cream_shop/started_page/sign_up_page.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 61, left: 26, right: 24),
                  child: Image.asset(
                    'assets/welcome_page_pic1.png',
                    width: 244,
                    height: 310,
                  ),
                ),
                Text(
                  'Giao hàng tận tay',
                  style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Kem ăn liền tay',
                  style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 49),
                const Text(
                  'Luôn bên bạn mọi lúc mọi nơi',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 81),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      backgroudColor: Theme.of(context).colorScheme.primary,
                      height: 44,
                      width: 128,
                      text: "Đăng nhập",
                      textColor: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    buildButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      backgroudColor: Theme.of(context).colorScheme.secondary,
                      height: 44,
                      width: 128,
                      text: "Đăng ký",
                      textColor: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
