import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/fav_item.dart';
import 'package:shop_app/pages/components/header.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

//needs staggered grid, ad area, header,footer
class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [
            const MainHeader(title: "Favourites", icons: true),

            //LISTVIEW
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const FavItem();
                })
          ],
        ),
      ),
    );
  }
}
