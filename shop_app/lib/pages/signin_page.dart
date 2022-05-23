import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

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
                  Column(children: const [
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
                  ]),
                  Row(
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
                                fillColor:
                                    MaterialStateProperty.all(Colors.white),
                                checkColor: Colors.blue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                          ),
                          const Text("Remember Me",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      RichText(
                          text: TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = (() {
                                  //Some Pop Up?
                                }),
                              style: TextStyle(color: Colors.white),
                              text: "Forgot Password?"))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Row(
                        children: const [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 60)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              //Send to Log In Page
                            }),
                          style: TextStyle(color: Colors.white),
                          text: "Dont Have a account? Create Account"))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
