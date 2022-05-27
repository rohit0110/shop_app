import 'package:flutter/material.dart';
import 'package:shop_app/pages/preview.dart';

class DressCard extends StatefulWidget {
  const DressCard({Key? key}) : super(key: key);

  @override
  State<DressCard> createState() => _DressCardState();
}

//,primary image,colors,icon,liked
class _DressCardState extends State<DressCard> {
  Color likedColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PreviewPage()));
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    spreadRadius: 0,
                    offset: Offset(0, 2))
              ],
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/blue_bg.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                          splashRadius: 1,
                          onPressed: () {
                            setState(() {
                              if (likedColor == Colors.red) {
                                likedColor = Colors.grey;
                              } else {
                                likedColor = Colors.red;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            size: 20,
                            color: likedColor,
                          ))),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Dress 1",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Price", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                            ),
                            const Icon(Icons.shopping_bag)
                          ])),
                ],
              )
            ],
          )),
    );
  }
}
