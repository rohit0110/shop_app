import 'package:flutter/material.dart';

class ProfileDeets extends StatefulWidget {
  const ProfileDeets({Key? key}) : super(key: key);

  @override
  State<ProfileDeets> createState() => _ProfileDeetsState();
}

class _ProfileDeetsState extends State<ProfileDeets> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const CircleAvatar(
                radius: 25, backgroundImage: AssetImage("assets/hat.jpg")),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Lisa Jain",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "lisajain@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text("+22-88268463228",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
              ],
            )
          ],
        ));
  }
}
