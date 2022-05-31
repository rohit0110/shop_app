import 'package:flutter/material.dart';

class FavItem extends StatefulWidget {
  const FavItem({Key? key}) : super(key: key);

  @override
  State<FavItem> createState() => _FavItemState();
}

class _FavItemState extends State<FavItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            offset: Offset(0, 3),
          )
        ],
      ),
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/hat.jpg"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              Text(
                "Women Dark Clothes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Size M", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\$25", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          const Text(
            "Remove",
            style: TextStyle(
                color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
