import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/pages/components/dress_card.dart';

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
    // TODO: implement initState
    super.initState();
    tabController = TabController(initialIndex: 0, length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
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
        ),
        Container(
            height: 220,
            padding: const EdgeInsets.all(30),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("assets/red_hat.jpg"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "30% off",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "for new users",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            )),
        TabBar(
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
            ]),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            padding: EdgeInsets.only(bottom: 50),
            height: 410,
            child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DressCard();
                },
                staggeredTileBuilder: (index) {
                  return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                }))
      ]),
    );
  }
}
