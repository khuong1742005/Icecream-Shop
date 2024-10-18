import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/arrow_back.dart';
import 'package:ice_cream_shop/model/textField.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';
import 'package:ice_cream_shop/started_page/confirm_pass_page.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

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
                  'Tìm tài khoản',
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
                buildTextField(hinttext: "Email", isPass: false),
                const SizedBox(height: 30),
                buildButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmPassPage()));
                  },
                  backgroudColor: Theme.of(context).colorScheme.primary,
                  height: 360,
                  width: 55,
                  text: "Tiếp tục",
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    buildArrow(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 75),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Tìm kiếm bằng số di động',
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
          )
        ],
      ),
    );
  }
}
