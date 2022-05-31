import 'package:flutter/material.dart';

class NumKey extends StatefulWidget {
  const NumKey({Key? key, required this.alphs, required this.number})
      : super(key: key);
  final String number, alphs;
  @override
  State<NumKey> createState() => _NumKeyState();
}

class _NumKeyState extends State<NumKey> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Text(
            widget.number,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          Text(
            widget.alphs,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}
