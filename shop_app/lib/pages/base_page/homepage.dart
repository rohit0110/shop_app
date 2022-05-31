import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/pages/components/dress_card.dart';
import 'package:shop_app/pages/components/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

//needs staggered grid, ad area, header,footer
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: const MainHeader(title: "Home", icons: true),
        ),
        redAdArea(),
        tabBar(),
        stagGrid()
      ],
    );
  }

  Widget redAdArea() {
    return Container(
      height: 220,
      padding: const EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/red_hat.jpg"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "30% off",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "for new users",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      isScrollable: true,
      controller: tabController,
      labelColor: Colors.black,
      indicatorColor: Colors.black,
      tabs: const [
        Tab(text: 'Featured'),
        Tab(text: 'New Arrival'),
        Tab(text: 'Summer'),
        Tab(text: 'Winter'),
        Tab(text: 'Blazer'),
        Tab(text: 'Jacket')
      ],
    );
  }

  Widget stagGrid() {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              crossAxisCount: 2,
              itemCount: 10,
              itemBuilder: (context, index) {
                return DressCard(index: index);
              },
              staggeredTileBuilder: (index) {
                return const StaggeredTile.count(1, 1.8);
              },
            ),
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: MediaQuery.of(context).size.width,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(color: Colors.white.withOpacity(0.1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
