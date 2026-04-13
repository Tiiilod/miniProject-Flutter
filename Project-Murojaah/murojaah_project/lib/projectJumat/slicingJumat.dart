import 'package:flutter/material.dart';
import 'package:murojaah_project/projectJumat/banner.dart';
import 'package:murojaah_project/projectJumat/banner2.dart';
import 'package:murojaah_project/projectJumat/container2.dart';
import 'package:murojaah_project/projectJumat/container3.dart';
import 'package:murojaah_project/projectJumat/container4.dart';
import 'package:murojaah_project/projectJumat/teks.dart';
import 'package:murojaah_project/projectJumat/teks2.dart';
import 'package:murojaah_project/projectJumat/titik.dart';

class Slicingjumat extends StatelessWidget {
  const Slicingjumat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Assalamu'alaikum, TURKY HUSEIN HATIM",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Icon(Icons.person_outline),
                              SizedBox(width: 12),
                              Stack(children: [Icon(Icons.notifications_none)]),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 12),
                      Row(
                        children: [
                          Container(width: 40, height: 40, color: Colors.grey),
                          SizedBox(width: 8),
                          Column(
                            children: [
                              Text('  syariah', style: TextStyle(fontSize: 15)),
                              Text(
                                "Jago",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                bannerJumat(),
                SizedBox(height: 5),
                Titik(),
                SizedBox(height: 5),
                Container2(),
                SizedBox(height: 5),
                Teks(),
                Banner2(),
                SizedBox(height: 5),
                Container3(),
                SizedBox(height: 5),
                Teks2(),
                SizedBox(height: 3,),
                Container4()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purple,
      showUnselectedLabels: true,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Beranda',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_balance_wallet_outlined),
        label: 'Kantong',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.swap_horiz),
        label: 'Transaksi',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.credit_card),
        label: 'Kartu',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.more_horiz),
        label: 'Lainnya',
      ),
    ],
  ),
    );
  }
}
