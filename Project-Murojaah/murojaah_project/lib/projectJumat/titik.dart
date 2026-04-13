import 'package:flutter/material.dart';

class Titik extends StatelessWidget {
  const Titik({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
