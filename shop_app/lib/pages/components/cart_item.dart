import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int num = 1;
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      num -= 1;
                    });
                  },
                  icon: const Icon(Icons.remove_circle_outline)),
              Text('$num'),
              IconButton(
                  onPressed: () {
                    setState(
                      () {
                        num += 1;
                      },
                    );
                  },
                  icon: const Icon(Icons.add_circle_outline))
            ],
          )
        ],
      ),
    );
  }
}
