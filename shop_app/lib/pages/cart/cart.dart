import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/bot_nav.dart';
import 'package:shop_app/pages/components/cart_item.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/components/paid.dart';
import 'package:shop_app/pages/shipping/shipping.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: MainHeader(title: "Cart", icons: true),
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CartItem();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                PaidCard(title: "Total Amount", money: "\$90", shadowed: false),
                PaidCard(title: "Discount", money: "-\$15", shadowed: false),
                PaidCard(
                    title: "Amount Payable", money: "\$75", shadowed: true),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          //CHANGE BUTTON
          const IntButton(
            title: "Checkout Securely",
            route: ShippingPage(),
            prefix: Icons.lock,
            postfix: Icons.abc,
            hasPre: true,
            hasPost: false,
          )
        ],
      ),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}
