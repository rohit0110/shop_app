import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/num_keyboard.dart';

class OTPage extends StatefulWidget {
  const OTPage({Key? key}) : super(key: key);

  @override
  State<OTPage> createState() => _OTPageState();
}

class _OTPageState extends State<OTPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  children: [
                    const MainHeader(title: "", icons: false),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                                children: [
                                  TextSpan(text: 'Style'),
                                  TextSpan(
                                    text: "ON",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'Enter the code to'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'verify your account'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text:
                                          'we have sent you an sms with a code to'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: 'the number +22-714552668'),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      numberOfFields: 4,
                      readOnly: true,
                      showCursor: true,
                      margin: const EdgeInsets.all(10),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: [
                          TextSpan(text: 'send new '),
                          TextSpan(
                            text: "code again ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 33, 44, 243),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(flex: 2, child: NumKeyboard()),
          ],
        ),
      ),
    );
  }
}
