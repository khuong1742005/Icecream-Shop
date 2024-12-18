import 'package:flutter/material.dart';
import 'package:ice_cream_shop/components/arrow_back.dart';
import 'package:ice_cream_shop/screens/first_screens/new_pass_screen.dart';
import 'package:ice_cream_shop/widgets/main_button.dart';
import 'package:ice_cream_shop/widgets/text_field.dart';

class ConfirmPassPage extends StatelessWidget {
  const ConfirmPassPage({super.key});

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
                buildTextField(hinttext: "Nhập mã", isPass: false),
                const SizedBox(height: 30),
                buildMainButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewPassPage()));
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
                    const SizedBox(width: 120),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Gửi lại mã',
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
