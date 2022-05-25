import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> imgList = [
    'assets/blue_bg.jpg',
    'assets/hat.jpg',
    'assets/sit.jpg',
    'assets/stand.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              width: 400,
              //child: Image(image: AssetImage(item)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(item),
              )),

              // child: ClipRRect(
              //     borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              //     child: Stack(
              //       children: <Widget>[
              //         Image(image: AssetImage(item)),
              //         // Positioned(
              //         //   bottom: 0.0,
              //         //   left: 0.0,
              //         //   right: 0.0,
              //         //   child: Container(
              //         //     decoration: const BoxDecoration(
              //         //       gradient: LinearGradient(
              //         //         colors: [
              //         //           Color.fromARGB(200, 0, 0, 0),
              //         //           Color.fromARGB(0, 0, 0, 0)
              //         //         ],
              //         //         begin: Alignment.bottomCenter,
              //         //         end: Alignment.topCenter,
              //         //       ),
              //         //     ),
              //         //     padding: const EdgeInsets.symmetric(
              //         //         vertical: 10.0, horizontal: 20.0),
              //         //     child: Text(
              //         //       'No. ${imgList.indexOf(item)} image',
              //         //       style: TextStyle(
              //         //         color: Colors.white,
              //         //         fontSize: 20.0,
              //         //         fontWeight: FontWeight.bold,
              //         //       ),
              //         //     ),
              //         //   ),
              //         // ),
              //       ],
              //     )),
            ))
        .toList();
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: false,
      ),
      items: imageSliders,
    ));
  }
}
