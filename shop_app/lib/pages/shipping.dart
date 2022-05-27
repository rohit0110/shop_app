import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/payment.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({Key? key}) : super(key: key);

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            children: [
              const MainHeader(title: "Shipping Address", icons: true),
              const SizedBox(
                height: 20,
              ),
              progressBar(),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Shipping",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Form(
                    child: Column(
                  children: [
                    formField("Enter Name", "Full Name"),
                    formField("Enter Address", "Address"),
                    formField("Enter Pin Code", "Pin Code"),
                    formField("Enter Mobile Number", "Mobile Number"),
                    formField("Enter City", "City"),
                    formField("Enter Address", "Address"),
                    formField("Enter Country", "Country"),
                  ],
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              const IntButton(title: "Continue to pay", route: PaymentPage())
            ],
          ),
        ),
      ),
    );
  }

  Widget formField(String hint, String label) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          labelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold)),
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
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16)),
        SizedBox(
          width: 10,
        ),
        Text("Order placed",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16))
      ],
    );
  }
}
