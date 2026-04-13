import 'package:flutter/material.dart';

class bannerJumat extends StatelessWidget {
  const bannerJumat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Text(
                        'Kantong Utama',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Container(height: 10, width: 100, color: Colors.grey),
                    ],
                  ),
                ),
                SizedBox(width: 165),
                Text(
                  'Rp.50.000',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 2),
                Icon(Icons.visibility_off),
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Aktifitas Terakhir', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}
