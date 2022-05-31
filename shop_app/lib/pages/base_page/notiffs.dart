import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

//needs staggered grid, ad area, header,footer
class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            children: const [MainHeader(title: "Notifications", icons: false)]),
      ),
    );
  }
}
