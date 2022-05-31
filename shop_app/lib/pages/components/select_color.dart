import 'package:flutter/material.dart';

class SelectColor extends StatefulWidget {
  const SelectColor({Key? key}) : super(key: key);

  @override
  State<SelectColor> createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
  final List<Color> colors = [Colors.blue, Colors.grey];
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        colors.length,
        (index) => InkWell(
          splashColor: Colors.transparent,
          child: Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: (index == selectedColor) ? Colors.red : Colors.black,
              ),
              color: colors[index],
            ),
          ),
          onTap: () {
            setState(
              () {
                selectedColor = index;
              },
            );
          },
        ),
      ),
    );
  }
}
