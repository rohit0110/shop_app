import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  State<NotifPage> createState() => _NotifPageState();
}

//needs staggered grid, ad area, header,footer
class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
            children: const [MainHeader(title: "Notifications", icons: false)]),
      ),
    );
  }
}
