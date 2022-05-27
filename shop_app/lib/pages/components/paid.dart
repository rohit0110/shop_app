import 'package:flutter/material.dart';

class PaidCard extends StatefulWidget {
  const PaidCard(
      {Key? key,
      required this.title,
      required this.money,
      required this.shadowed})
      : super(key: key);
  final String title, money;
  final bool shadowed;
  @override
  State<PaidCard> createState() => _PaidCardState();
}

class _PaidCardState extends State<PaidCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: (!widget.shadowed)
          ? null
          : const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 2)
            ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            widget.money,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
