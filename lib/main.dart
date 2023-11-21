import 'package:flutter/material.dart';
import 'package:warehouse/page/produk.dart';

import 'page/gudang.dart';
import 'page/homepage.dart';
import 'page/kasir.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/gudang': (context) => const Gudang(),
        '/barang': (context) => const Barang(),
        '/kasir': (context) => const Kasir(),
      },
    );
  }
}
