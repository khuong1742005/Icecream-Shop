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
                Text(
                  'Tìm tài khoản',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "Chúng tôi có thể gửi mã cho bạn thông qua email",
                  style: Theme.of(context).textTheme.labelLarge,
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
                  height: 55,
                  width: 360,
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
                      child: Text(
                        'Tìm kiếm bằng số di động',
                        style: Theme.of(context).textTheme.labelLarge,
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
