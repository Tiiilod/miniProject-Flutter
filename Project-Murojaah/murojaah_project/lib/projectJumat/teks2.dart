import 'package:flutter/material.dart';

class Teks2 extends StatelessWidget {
  const Teks2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Shortcut',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Edit',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
      
        ],
      ),
    );
  }
}
