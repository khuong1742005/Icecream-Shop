import 'package:flutter/material.dart';
import 'package:ice_cream_shop/started_page/forgot_pass_page.dart';
import 'package:ice_cream_shop/started_page/sign_up_page.dart';

// ignore: camel_case_types
class signInPage extends StatelessWidget {
  const signInPage({super.key});

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
                const Text(
                  'Đăng nhập',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildSignIn(testColor: Colors.black),
                      buildSignIn(testColor: Colors.red),
                      buildSignIn(testColor: Colors.orange),
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
                      child: const Text(
                        'Bạn quên mật khẩu ?',
                        style: TextStyle(
                          color: Color(0xffff4f80),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffff4f80),
                      minimumSize: const Size(360, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Đăng nhập',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.back_hand),
                    ),
                    const SizedBox(width: 107),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        'Tạo tài khoản',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
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

  Widget buildSignIn({testColor}) {
    return Container(
      width: 55,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: testColor,
      ),
    );
  }

  Widget buildTextField({hinttext, isPass}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffFF0047),
            width: 2,
          ),
        ),
        fillColor: const Color(0xffF1F4FF),
        filled: true,
        contentPadding: const EdgeInsets.only(top: 40, left: 20),
      ),
      obscureText: isPass,
    );
  }
}
