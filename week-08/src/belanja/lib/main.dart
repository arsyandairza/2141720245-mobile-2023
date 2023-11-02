import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_pages.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}