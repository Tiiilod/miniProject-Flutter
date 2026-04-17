// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HttpApi extends StatefulWidget {
//   const HttpApi({super.key});

//   @override
//   State<HttpApi> createState() => _ApiState();
// }

// class _ApiState extends State<HttpApi> {
//   List data = [];
//   bool isLoading = true;

//   Future ambildata() async {
//     var response = await http.get(Uri.parse('https://dummyjson.com/products'));

//     if (response.statusCode == 200) {
//       setState(() {
//         var hasil = jsonDecode(response.body);
//         data = hasil['products'];
//         isLoading = false;
//       });
//     } else {
//       print('Gagal mengambil data');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     ambildata();
//   }

//   Widget bannerItem(String url) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Latihan Ambil Data API")),
//       body: isLoading
//           ? Center(child: CircularProgressIndicator())
//           : Column(
//               children: [
//                 //
//                 Container(
//                   height: 180,
//                   child: PageView(
//                     children: [
//                       bannerItem("https://picsum.photos/400/200?1"),
//                       bannerItem("https://picsum.photos/400/200?2"),
//                       bannerItem("https://picsum.photos/400/200?3"),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: data.length,
//                     itemBuilder: (context, index) {
//                       var item = data[index];

//                       return Container(
//                         margin: EdgeInsets.all(10),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[300],
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image.network(
//                               item['images'][0],
//                               width: 80,
//                               height: 80,
//                               fit: BoxFit.cover,
//                               errorBuilder: (context, error, stackTrace) {
//                                 return Text('error');
//                               },
//                             ),
//                             SizedBox(width: 10),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     item['title'],
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     item['description'],
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpApi extends StatefulWidget {
  const HttpApi({super.key});

  @override
  State<HttpApi> createState() => _HttpApiState();
}

class _HttpApiState extends State<HttpApi> {
  List data = [];
  bool isLoading = true;

  Future<void> ambilData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      setState(() {
        var hasil = jsonDecode(response.body);
        data = hasil["products"];
        isLoading = false;
      });
    } else {
      print("Gagal");
    }
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Latihan Ambil DATA")),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // 🔥 BANNER (PAGEVIEW)
                SizedBox(
                  height: 180,
                  child: PageView(
                    children: data.take(5).map((item) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[350]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  12,
                                  10,
                                  0,
                                  10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Harga Mulai",
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red.shade400,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "\$${item['price']}",
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      item['title'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Image.network(
                                item['images'][0],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),

                // 🔥 LIST PRODUK (SUDAH DIPERKECIL)
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      var item = data[index];

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  item['images'][0],
                                  fit: BoxFit.contain,
                                  height: 80,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(Icons.broken_image);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    item['description'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.lato(fontSize: 11),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Text('\$'),
                                      Text(
                                        item['price'].toString(),
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
