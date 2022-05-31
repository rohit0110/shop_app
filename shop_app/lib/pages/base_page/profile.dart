import 'package:flutter/material.dart';
import 'package:shop_app/pages/components/header.dart';
import 'package:shop_app/pages/components/int_button.dart';
import 'package:shop_app/pages/components/profile_card.dart';
import 'package:shop_app/pages/components/profile_deets.dart';
import 'package:shop_app/pages/sign_in/signin_page.dart';

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
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        children: const [
          MainHeader(title: "My Account", icons: false),
          SizedBox(
            height: 20,
          ),
          ProfileDeets(),
          SizedBox(
            height: 30,
          ),
          ProfileCard(title: "My Order", order: true),
          ProfileCard(title: "My Cards", order: false),
          ProfileCard(title: "Payment History", order: false),
          ProfileCard(title: "My Reviews", order: false),
          ProfileCard(title: "My Addresses", order: false),
          ProfileCard(title: "Change Email or Password", order: false),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: IntButton(
              title: "Log Out",
              route: SignInPage(),
              prefix: Icons.logout,
              postfix: Icons.abc,
              hasPre: true,
              hasPost: false,
            ),
          ),
        ],
      ),
    );
  }
}
