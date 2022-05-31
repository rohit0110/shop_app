import 'package:flutter/material.dart';

class ExtButton extends StatefulWidget {
  const ExtButton(
      {Key? key,
      required this.route,
      required this.title,
      required this.titleColor,
      required this.bgColor,
      required this.hasIcon,
      required this.whichIcon})
      : super(key: key);
  final Widget route;
  final String title;
  final Color titleColor;
  final Color bgColor;
  final bool hasIcon;
  final IconData whichIcon;

  @override
  State<ExtButton> createState() => _ExtButtonState();
}

class _ExtButtonState extends State<ExtButton> {
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
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            _createRoute(widget.route),
          );
        },
        child: Row(
          children: [
            if (widget.hasIcon)
              Icon(
                widget.whichIcon,
                color: Colors.black,
                size: 16,
              ),
            const SizedBox(
              width: 5,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color: widget.titleColor, fontWeight: FontWeight.bold),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.bgColor),
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
