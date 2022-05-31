import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/ext_button.dart';
import 'package:shop_app/pages/otp_page/otp_page.dart';
import 'package:shop_app/pages/sign_in/signin_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final heading = RichText(
    text: const TextSpan(
      style: TextStyle(fontSize: 40, color: Colors.white),
      children: [
        TextSpan(text: 'Style'),
        TextSpan(
          text: "ON",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );

  final subheading1 = RichText(
    text: const TextSpan(
      style: TextStyle(fontSize: 30, color: Colors.white),
      children: [
        TextSpan(text: 'Create Account'),
      ],
    ),
  );

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeIn;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

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
              image: AssetImage("assets/stand.jpg"), fit: BoxFit.fill),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Column(
                  children: [
                    signUpHeader(context),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            heading,
                            const SizedBox(
                              height: 20,
                            ),
                            subheading1
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    formField(),
                    const SizedBox(
                      height: 30,
                    ),
                    const ExtButton(
                        route: OTPage(),
                        title: "Sign Up",
                        titleColor: Colors.black,
                        bgColor: Colors.white,
                        hasIcon: true,
                        whichIcon: Icons.mail),
                    const ExtButton(
                        route: SignInPage(),
                        title: "f  Log In with facebook",
                        titleColor: Colors.white,
                        bgColor: Color.fromARGB(255, 9, 6, 169),
                        hasIcon: false,
                        whichIcon: Icons.abc),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              Navigator.of(context).push(
                                _createRoute(
                                  const SignInPage(),
                                ),
                              );
                            }),
                          style: const TextStyle(color: Colors.white),
                          text: "Already a account? Log in"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget signUpHeader(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: Row(
            children: const [
              Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget formField() {
    return Column(
      children: const [
        TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintText: 'Name',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        TextField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: 'Enter Email or Phone',
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
              borderSide: BorderSide(color: Colors.white),
            ),
            focusColor: Colors.white,
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.password,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
