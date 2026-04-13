import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menuapp extends StatelessWidget {
  const Menuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat Semua Promo",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Komponenmenu(iconApps: "", labels: "Produk Online"),
              Komponenmenu(iconApps: "", labels: "Kalkulator Zat"),
              Komponenmenu(iconApps: "", labels: "Tagihan"),
              Komponenmenu(iconApps: "", labels: "Gifr Card"),
              Komponenmenu(iconApps: "", labels: "Bonus Point"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Komponenmenu(iconApps: "", labels: "Produk Online"),
              Komponenmenu(iconApps: "", labels: "Kalkulator Zat"),
              Komponenmenu(iconApps: "", labels: "Tagihan"),
              Komponenmenu(iconApps: "", labels: "Gifr Card"),
              Komponenmenu(iconApps: "", labels: "Bonus Point"),
            ],
          ),
        ],
      ),
    );
  }
}

class Komponenmenu extends StatelessWidget {
  final String iconApps;
  final String labels;
  const Komponenmenu({super.key, required this.iconApps, required this.labels});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
            image: DecorationImage(image: AssetImage(iconApps)),
          ),
        ),
        SizedBox(height: 5),
        Text(labels, style: GoogleFonts.openSans(fontSize: 8)),
      ],
    );
  }
}
