import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart.dart';
import 'package:shop_app/pages/components/bot_nav.dart';
import 'package:shop_app/pages/components/carousel.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/components/select_color.dart';
import 'package:shop_app/pages/components/select_size.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

//Column carousel text row column text radio text radio button
class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: const MainHeader(
                  title: "Preview",
                  icons: true,
                )),
            const SizedBox(
              height: 30,
            ),
            const Carousel(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Casual Puff Sleeve Solid Women Red Top",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Color",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SelectColor()
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Select Size",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SelectSize()
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: IntButton(
                title: "Add Cart",
                route: CartPage(),
                prefix: Icons.shopping_bag,
                postfix: Icons.abc,
                hasPre: true,
                hasPost: false,
              ),
            )
          ],
        ),
        bottomNavigationBar: const BotNavBar());
  }
}
