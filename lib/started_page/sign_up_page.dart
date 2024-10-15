import 'package:flutter/material.dart';

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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.back_hand),
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffff4f80),
                      minimumSize: const Size(360, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Đăng kí',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
