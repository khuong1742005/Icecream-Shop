import 'package:flutter/material.dart';
import 'package:ice_cream_shop/home_page/main_home_page.dart';
import 'package:ice_cream_shop/model/arrow_back.dart';
import 'package:ice_cream_shop/model/textField.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 81, left: 17, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tạo tài khoản',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                buildArrow(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 8),
                buildTextField(hinttext: "Nhập tên của bạn", isPass: false),
                const SizedBox(height: 16),
                buildTextField(hinttext: "Email", isPass: false),
                const SizedBox(height: 16),
                buildTextField(hinttext: "Mật khẩu", isPass: true),
                const SizedBox(height: 16),
                buildTextField(hinttext: "Nhập lại mật khẩu", isPass: true),
                const SizedBox(height: 64),
                buildButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  backgroudColor: Theme.of(context).colorScheme.primary,
                  height: 360,
                  width: 55,
                  text: "Đăng ký",
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
