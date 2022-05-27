import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/ext_button.dart';
import 'package:shop_app/pages/signin_page.dart';
import 'package:shop_app/pages/signup_page.dart';

class InitialPage2 extends StatelessWidget {
  InitialPage2({Key? key}) : super(key: key);
  final heading = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 40, color: Colors.white),
          children: [
        TextSpan(text: 'Style'),
        TextSpan(text: "ON", style: TextStyle(fontWeight: FontWeight.bold))
      ]));

  final subheading1 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 20, color: Colors.white),
          children: [
        TextSpan(text: '  Sign up now'),
      ]));

  final subheading2 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 20, color: Colors.white),
          children: [
        TextSpan(text: '  get 30% cashback'),
      ]));

  final subheading3 = RichText(
      text: const TextSpan(
          style: TextStyle(fontSize: 20, color: Colors.white),
          children: [
        TextSpan(text: '  on first purchase'),
      ]));

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/sit.jpg"), fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                children: [
                  //HEADER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(_createRoute(SignUpPage()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent)),
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
                          ))
                    ],
                  ),

                  const SizedBox(height: 150),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heading,
                          subheading1,
                          subheading2,
                          subheading3
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const ExtButton(
                      route: SignInPage(),
                      title: "Sign In",
                      titleColor: Colors.black,
                      bgColor: Colors.white,
                      hasIcon: false,
                      whichIcon: Icons.abc),
                  ExtButton(
                      route: SignUpPage(),
                      title: "Sign Up With Email",
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
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
