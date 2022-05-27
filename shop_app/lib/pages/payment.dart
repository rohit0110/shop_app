import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/confirm.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            children: [
              const MainHeader(title: "Payment", icons: true),
              const SizedBox(
                height: 20,
              ),
              progressBar(),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Payment",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              CreditCardWidget(
                  cardNumber: "1234 5678 9012 3456",
                  expiryDate: "01/08",
                  cardHolderName: "Lisa Jain",
                  cvvCode: "000",
                  cardBgColor: Colors.black,
                  showBackView: false,
                  isHolderNameVisible: true,
                  obscureCardNumber: false,
                  onCreditCardWidgetChange: (brand) {}),
              const SizedBox(
                height: 20,
              ),
              //BUTTONS
              const IntButton(
                title: "Cash On Delivery",
                route: ConfirmPage(),
                prefix: Icons.lock,
                postfix: Icons.abc,
                hasPre: false,
                hasPost: false,
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: IntButton(
                    title: "Pay Through Delivery",
                    route: ConfirmPage(),
                    prefix: Icons.lock,
                    postfix: Icons.abc,
                    hasPre: false,
                    hasPost: false,
                  )),
              const Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: IntButton(
                    title: "Pay Now \$75",
                    route: ConfirmPage(),
                    prefix: Icons.lock,
                    postfix: Icons.abc,
                    hasPre: true,
                    hasPost: false,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget progressBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Shipping",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Icon(
          Icons.more_horiz,
          size: 40,
        ),
        Text("Payment",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Icon(
          Icons.more_horiz,
          size: 40,
        ),
        Text("Order placed",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16))
      ],
    );
  }
}
