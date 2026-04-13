import 'package:flutter/material.dart';
import 'package:murojaah_project/projectKamis/flashSale.dart';
import 'package:murojaah_project/projectKamis/menuApp.dart';

class Slicingkamis extends StatelessWidget {
  const Slicingkamis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                "Banner Promo",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Menuapp(),
            SizedBox(height: 10),
            Flashsale(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // IconButton(
            //   onPressed: () {},
            //   icon: SizedBox(height: 30,  child: Image.asset("assets/home.png"),),
            // ),
            // IconButton(
            // onPressed: () {},
            // icon: SizedBox(height: 35, child: Image.asset("assets/promo.png"),),
            // ),
            // IconButton(
            // onPressed: () {},
            // icon: SizedBox(height: 30,child: Image.asset("assets/chat.png"),),
            // ),
            // IconButton(
            // onPressed: () {},
            // icon: SizedBox(height: 35,child: Image.asset("assets/shopping-bag.png"),),
            // ),
            // Yang Menggunakan Icon
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.discount)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            IconButton(onPressed: () {}, icon: Icon(Icons.badge)),
          ],
        ),
      ),
    );
  }
}
