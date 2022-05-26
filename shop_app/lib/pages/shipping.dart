import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';

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
              const MainHeader(title: "Shpping Address", icons: true),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Shopping",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                  Text("Payment",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Order placed",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))
                ],
              ),
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
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter Name",
                          labelText: "Full Name",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter address",
                          labelText: "Address",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter Pin code",
                          labelText: "Pin Code",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter Mobile Number",
                          labelText: "Mobile Number",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter City",
                          labelText: "City",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          hintText: "Enter Country",
                          labelText: "Country",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShippingPage()));
                  },
                  child: Row(
                    children: const [
                      Text(
                        "Continue to pay",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
                ),
              ),
            ],
          ),
        ),
      ),
      //SHIPPING AND ORDERPLACED
      //TEXT
      //INPUT FORM
      //BUTTON
    );
  }
}
