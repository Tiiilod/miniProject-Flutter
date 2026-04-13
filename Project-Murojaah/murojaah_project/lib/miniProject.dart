import 'package:flutter/material.dart';

class MiniProject extends StatefulWidget {
  const MiniProject({super.key});

  @override
  State<MiniProject> createState() => _MiniProjectState();
}

class _MiniProjectState extends State<MiniProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"), backgroundColor: Colors.amber),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: PageView(
              children: [
                Container(
                  color: Colors.red,
                  child: Center(child: Text("Halaman 1")),
                ),
                Container(
                  color: Colors.blue,
                  child: Center(child: Text("Halaman 2")),
                ),
                Container(
                  color: Colors.green,
                  child: Center(child: Text("Halaman 3")),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('1')),
              ),
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('1')),
              ),
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('1')),
              ),
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('1')),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  color: Colors.grey,
                  child: Center(child: Text("bagian 1")),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  color: Colors.blue,
                  child: Center(child: Text("bagian 2")),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: 150,
              color: Colors.purple,
              child: Center(child: Text("bagian 3")),
            ),
          ),
        ],
      ),
    );
  }
}
