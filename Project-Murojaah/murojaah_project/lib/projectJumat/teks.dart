import 'package:flutter/material.dart';

class Teks extends StatelessWidget {
  const Teks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Spotlight',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Lihat Semua',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
      
        ],
      ),
    );
  }
}
