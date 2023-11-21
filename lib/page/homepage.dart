import 'package:flutter/material.dart';
import 'package:warehouse/utils/card.dart';
import 'package:warehouse/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tunggal Jaya Warehouse', style: title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/gudang');
            },
            child: CardMenu(
                text: "GUDANG",
                backgroundColor: grey,
                foregroundColor: greyLight,
                image: "assets/image/gudang.png"),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/barang');
            },
            child: CardMenu(
                text: "BARANG",
                backgroundColor: orangeDark,
                foregroundColor: greyLight,
                image: "assets/image/barang.png"),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/kasir');
            },
            child: CardMenu(
                text: "KASIR",
                backgroundColor: orange,
                foregroundColor: greyLight,
                image: "assets/image/kasir.png"),
          ),
        ],
      ),
    );
  }
}
