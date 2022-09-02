import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<String> katergori = [
    "Semua",
    "Nasi",
    "Soto",
    "Ayam",
    "Ikan",
    "Mie",
    "Sop"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: katergori.length,
          itemBuilder: (context, index) => buildKategori(index),
        ),
      ),
    );
  }

  Widget buildKategori(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                katergori[index], style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex == index ? Colors.black : Colors.grey),),
            Container(
              margin: EdgeInsets.only(top: 4),
              width: 30,
              height: 2,
              color: selectedIndex == index ? Colors.black : Colors.transparent
            ),
          ],
        ),
      ),
    );
  }
}