import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:shop_app/pages/components/header.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Shipping",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                  Text("Payment",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                  Text("Order placed",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))
                ],
              ),
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
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmPage()));
                  },
                  child: Row(
                    children: const [
                      Text(
                        "Cash on Delivery",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmPage()));
                  },
                  child: Row(
                    children: const [
                      Text(
                        "Pay through Upi",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmPage()));
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      Text(
                        " Pay Now \$75",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
                ),
              ),
            ],
          ),
        ),
      ),
      //Payment AND ORDERPLACED
      //TEXT
      //INPUT FORM
      //BUTTON
    );
  }
}
