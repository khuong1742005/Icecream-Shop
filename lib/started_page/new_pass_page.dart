import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/arrow_back.dart';
import 'package:ice_cream_shop/model/textField.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';
import 'package:ice_cream_shop/started_page/sign_in_page.dart';

class NewPassPage extends StatelessWidget {
  const NewPassPage({super.key});

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
                  'Xác nhận',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Chúng tôi có thể gửi mã cho bạn thông qua email",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                buildTextField(hinttext: "Nhập mật khẩu mới", isPass: true),
                const SizedBox(height: 14),
                buildTextField(hinttext: "Nhập lại mật khẩu mới", isPass: true),
                const SizedBox(height: 30),
                buildButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  backgroudColor: const Color(0xffff4f80),
                  height: 360,
                  width: 55,
                  text: "Đăng nhập",
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 18),
                buildArrow(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: const Color(0xffFF4F80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
