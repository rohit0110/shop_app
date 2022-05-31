import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/components/num_keyboard.dart';
import 'package:shop_app/pages/base_page/homepage.dart';

class ForgotPWPage extends StatefulWidget {
  const ForgotPWPage({Key? key}) : super(key: key);

  @override
  State<ForgotPWPage> createState() => _OTPageState();
}

class _OTPageState extends State<ForgotPWPage> {
  final heading = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 40, color: Colors.black),
          children: [
        TextSpan(text: 'Style'),
        TextSpan(text: "ON", style: TextStyle(fontWeight: FontWeight.bold))
      ]));

  final subheading1 = RichText(
      text: const TextSpan(
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          children: [
        TextSpan(text: 'Forget Password?'),
      ]));

  final subheading3 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 10, color: Colors.black),
          children: [
        TextSpan(text: 'If you forgot your account password phone'),
      ]));

  final subheading4 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 10, color: Colors.black),
          children: [
        TextSpan(text: 'enter your registered number'),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const MainHeader(title: "", icons: false),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Column(
                            children: [
                              heading,
                              subheading1,
                              subheading3,
                              subheading4
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mobile_friendly_sharp,
                                color: Colors.black,
                                size: 20,
                              ),
                              hintText: "Enter Registered Number"),
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.bottom,
                        ),
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        readOnly: true,
                        showCursor: true,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: IntButton(
                          title: "Send",
                          route: HomePage(),
                          prefix: Icons.lock,
                          postfix: Icons.abc,
                          hasPre: false,
                          hasPost: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(flex: 2, child: NumKeyboard()),
            ],
          ),
        ),
      ),
    );
  }
}
