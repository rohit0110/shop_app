import 'package:flutter/material.dart';

class IntButton extends StatefulWidget {
  const IntButton({Key? key, required this.title, required this.route})
      : super(key: key);
  final String title;
  final Widget route;
  @override
  State<IntButton> createState() => _IntButtonState();
}

class _IntButtonState extends State<IntButton> {
  Route _createRoute(Widget page) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(_createRoute(widget.route));
        },
        child: Row(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 60, vertical: 12)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)))),
      ),
    );
  }
}
