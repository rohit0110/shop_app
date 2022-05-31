import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key, required this.title, required this.order})
      : super(key: key);
  final String title;
  final bool order;
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 2))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              if (widget.order)
                const Text(
                  "View all orders",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              const Icon(
                Icons.chevron_right,
                size: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
