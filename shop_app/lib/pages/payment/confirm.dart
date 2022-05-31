import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/base_page/base_page.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline_sharp,
              color: Color.fromARGB(255, 33, 44, 243),
              size: 140,
            ),
            const Text(
              "Your Order is Confirmed",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              "Thank For Your Order",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BasePage()));
                },
                child: Row(
                  children: const [
                    Text(
                      "Done",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 12)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BasePage(),
                        ),
                      );
                    }),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 33, 44, 243),
                      fontWeight: FontWeight.bold),
                  text: "Back To Home"),
            )
          ],
        ),
      ),
    );
  }
}
