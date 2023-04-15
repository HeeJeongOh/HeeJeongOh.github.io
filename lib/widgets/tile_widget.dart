import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
  }) : super(key: key);

  final int index;
  final double? extent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: extent,
          child: Center(
              child: Container(
            color: Color.fromARGB(255, 193, 188, 188),
          )),
        ),
      ],
    );
  }
}
