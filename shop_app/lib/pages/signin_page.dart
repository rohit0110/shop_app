import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/base_page.dart';
import 'package:shop_app/pages/components/ext_button.dart';
import 'package:shop_app/pages/forgot_password.dart';
import 'package:shop_app/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final heading = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 40, color: Colors.white),
          children: [
        TextSpan(text: 'Style'),
        TextSpan(text: "ON", style: TextStyle(fontWeight: FontWeight.bold))
      ]));

  final subheading1 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 30, color: Colors.white),
          children: [
        TextSpan(text: 'Sign In'),
      ]));

  bool isChecked = false;

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeIn;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/blue_bg.jpg"), fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [heading],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [subheading1],
                  ),
                  const SizedBox(height: 20),
                  formField(),
                  const SizedBox(
                    height: 30,
                  ),
                  miscFeatures(),
                  const ExtButton(
                      route: BasePage(),
                      title: "Sign In",
                      titleColor: Colors.black,
                      bgColor: Colors.white,
                      hasIcon: false,
                      whichIcon: Icons.abc),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              Navigator.of(context)
                                  .push(_createRoute(SignUpPage()));
                            }),
                          style: const TextStyle(color: Colors.white),
                          text: "Dont Have a account? Create Account"))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget formField() {
    return Column(children: const [
      TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.mail,
              color: Colors.white,
            )),
      ),
      SizedBox(
        height: 30,
      ),
      TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusColor: Colors.white,
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.password,
              color: Colors.white,
            )),
      ),
    ]);
  }

  Widget miscFeatures() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Theme(
              data: ThemeData(
                  primaryColor: Colors.white,
                  unselectedWidgetColor: Colors.white),
              child: Checkbox(
                  value: isChecked,
                  fillColor: MaterialStateProperty.all(Colors.white),
                  checkColor: Colors.blue,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
            ),
            const Text("Remember Me", style: TextStyle(color: Colors.white))
          ],
        ),
        RichText(
            text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = (() {
                    Navigator.of(context)
                        .push(_createRoute(const ForgotPWPage()));
                  }),
                style: const TextStyle(color: Colors.white),
                text: "Forgot Password?"))
      ],
    );
  }
}
