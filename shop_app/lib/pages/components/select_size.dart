import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({Key? key}) : super(key: key);

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  final List<String> sizes = ["S", "M", "L"];
  int selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          sizes.length,
          (index) => InkWell(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    sizes[index],
                    style: TextStyle(
                        fontSize: 16,
                        color: (index == selectedSize)
                            ? Colors.white
                            : Colors.black),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    color:
                        (index == selectedSize) ? Colors.black : Colors.white,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedSize = index;
                  });
                },
              )),
    );
  }
}
