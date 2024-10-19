import 'package:flutter/material.dart';
import 'package:ice_cream_shop/home_page/main_home_page.dart';
import 'package:ice_cream_shop/model/arrow_back.dart';
import 'package:ice_cream_shop/model/textField.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';
import 'package:ice_cream_shop/started_page/forgot_pass_page.dart';
import 'package:ice_cream_shop/started_page/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 81, left: 17, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Đăng nhập',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildSignIn(icon: const Icon(Icons.g_mobiledata)),
                      buildSignIn(icon: const Icon(Icons.facebook)),
                      buildSignIn(icon: const Icon(Icons.apple)),
                    ],
                  ),
                ),
                // TextField
                const SizedBox(height: 24),
                buildTextField(hinttext: "Email", isPass: false),
                const SizedBox(height: 29),
                buildTextField(hinttext: "Mật khẩu", isPass: true),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassPage()));
                      },
                      child: Text(
                        'Bạn quên mật khẩu ?',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                ),
                buildButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainHomePage()));
                  },
                  backgroudColor: Theme.of(context).colorScheme.primary,
                  height: 55,
                  width: 360,
                  text: "Đăng nhập",
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    buildArrow(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 107),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: Text(
                        'Tạo tài khoản',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignIn({
    Icon icon = const Icon(Icons.search),
    Function()? ontap,
  }) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 55,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffECECEC),
        ),
        child: icon,
      ),
    );
  }
}
