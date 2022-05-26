import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/profile_card.dart';
import 'package:shop_app/pages/components/profile_deets.dart';
import 'package:shop_app/pages/signin_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

//needs staggered grid, ad area, header,footer
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(children: [
          const MainHeader(title: "My Account", icons: false),
          const SizedBox(
            height: 20,
          ),
          const ProfileDeets(),
          const SizedBox(
            height: 30,
          ),
          const ProfileCard(title: "My Order", order: true),
          const ProfileCard(title: "My Cards", order: false),
          const ProfileCard(title: "Payment History", order: false),
          const ProfileCard(title: "My Reviews", order: false),
          const ProfileCard(title: "My Addresses", order: false),
          const ProfileCard(title: "Change Email or Password", order: false),
          const SizedBox(
            height: 60,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    " Log Out",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)))),
            ),
          ),
        ]));
  }
}
