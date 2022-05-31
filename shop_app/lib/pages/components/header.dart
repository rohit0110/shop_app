import 'package:flutter/material.dart';
import 'package:shop_app/pages/base_page/base_page.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({Key? key, required this.title, required this.icons})
      : super(key: key);
  final String title;
  final bool icons;
  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              if (widget.title == "Home") {
                Scaffold.of(context).openDrawer();
              } else if (widget.title == "Notifications" ||
                  widget.title == "Favourites" ||
                  widget.title == "My Account") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasePage(),
                  ),
                );
              } else {
                Navigator.pop(context);
              }
            },
            icon: Icon(
              (widget.title == "Home") ? Icons.menu : Icons.arrow_back_ios,
              color: Colors.black,
            )),
        Text(
          (widget.title == "Home") ? "" : widget.title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        if (widget.icons)
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
        else
          const SizedBox(
            width: 60,
          )
      ],
    );
  }
}
