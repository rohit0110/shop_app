import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/carousel.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

//Column carousel text row column text radio text radio button
class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    const Text(
                      "Favourites",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.shopping_bag),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.person)
                      ],
                    )
                  ],
                ),
              ])),
          Carousel(),
        ],
      ),
    ));
  }
}
