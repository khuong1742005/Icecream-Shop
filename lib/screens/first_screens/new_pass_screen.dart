import 'package:flutter/material.dart';
import 'package:ice_cream_shop/components/arrow_back.dart';
import 'package:ice_cream_shop/screens/first_screens/sign_in_screen.dart';
import 'package:ice_cream_shop/widgets/main_button.dart';
import 'package:ice_cream_shop/widgets/text_field.dart';

class NewPassPage extends StatelessWidget {
  const NewPassPage({super.key});

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
                  'Xác nhận',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "Chúng tôi có thể gửi mã cho bạn thông qua email",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 4),
                buildTextField(hinttext: "Nhập mật khẩu mới", isPass: true),
                const SizedBox(height: 14),
                buildTextField(hinttext: "Nhập lại mật khẩu mới", isPass: true),
                const SizedBox(height: 30),
                buildMainButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  backgroudColor: Theme.of(context).colorScheme.primary,
                  height: 55,
                  width: 360,
                  text: "Quay lại đăng nhập",
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 18),
                buildArrow(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
