import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/num_key.dart';

class NumKeyboard extends StatefulWidget {
  const NumKeyboard({Key? key}) : super(key: key);

  @override
  State<NumKeyboard> createState() => _NumKeyboardState();
}

class _NumKeyboardState extends State<NumKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: const Color.fromARGB(255, 228, 228, 228),
      height: 300,
      child: GridView.count(
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 2,
        crossAxisCount: 3,
        children: const [
          NumKey(alphs: "", number: "1"),
          NumKey(alphs: "ABC", number: "2"),
          NumKey(alphs: "DEF", number: "3"),
          NumKey(alphs: "GHI", number: "4"),
          NumKey(alphs: "JKL", number: "5"),
          NumKey(alphs: "MNO", number: "6"),
          NumKey(alphs: "PQRS", number: "7"),
          NumKey(alphs: "TUV", number: "8"),
          NumKey(alphs: "WXYZ", number: "9"),
          SizedBox(),
          NumKey(alphs: "", number: "0"),
          Icon(
            Icons.backspace,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
    );
  }
}
