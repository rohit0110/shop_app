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
              //width: 400,
              //child: Image(image: AssetImage(item)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(item),
                  )),
            ))
        .toList();
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 0,
        autoPlay: false,
      ),
      items: imageSliders,
    ));
  }
}
