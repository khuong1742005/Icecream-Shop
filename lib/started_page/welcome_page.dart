import 'package:flutter/material.dart';
import 'package:ice_cream_shop/started_page/sign_in_page.dart';
import 'package:ice_cream_shop/started_page/sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 61, left: 26, right: 24),
              child: Image.asset(
                'assets/welcome_page_pic1.png',
                width: 244,
                height: 310,
              ),
            ),
            const Text(
              'Giao hàng tận tay',
              style: TextStyle(
                fontSize: 32,
                color: Color(0xffFF4F80),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Kem ăn liền tay',
              style: TextStyle(
                fontSize: 32,
                color: Color(0xffFF4F80),
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
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signInPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(128, 44),
                      backgroundColor: const Color(0xffFF4F80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(128, 44),
                      backgroundColor: const Color(0xffF5A7BC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
