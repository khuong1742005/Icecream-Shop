import 'package:flutter/material.dart';
import 'package:ice_cream_shop/components/arrow_back.dart';
import 'package:ice_cream_shop/pages/home_page.dart';
import 'package:ice_cream_shop/widgets/main_button.dart';
import 'package:ice_cream_shop/widgets/text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  'Tạo tài khoản',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                buildMainButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainHomePage()));
                  },
                  backgroudColor: Theme.of(context).colorScheme.primary,
                  height: 55,
                  width: 360,
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
