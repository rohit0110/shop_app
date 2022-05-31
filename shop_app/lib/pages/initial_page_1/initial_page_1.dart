import 'package:flutter/material.dart';
import 'package:shop_app/pages/initial_page_2/initial_page_2.dart';

class InitialPage1 extends StatelessWidget {
  const InitialPage1({Key? key}) : super(key: key);

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const InitialPage2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/hat.jpg"), fit: BoxFit.fill)),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 200, 30, 200),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(fontSize: 40, color: Colors.white),
                            children: [
                              TextSpan(text: 'Style'),
                              TextSpan(
                                text: "ON",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(fontSize: 32, color: Colors.white),
                            children: [
                              TextSpan(text: 'Explore the new'),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(fontSize: 32, color: Colors.white),
                            children: [
                              TextSpan(text: 'world of Clothing'),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              specButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget specButton(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: Row(
          children: const [
            Text(
              "Lets Explore",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 60),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    );
  }
}
