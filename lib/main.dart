import 'package:flutter/material.dart';
import 'package:coffee/pages/home.dart';
import 'package:coffee/pages/loading.dart';
import 'package:coffee/pages/rowcol.dart';
import 'package:coffee/pages/about.dart';

void main() {
  runApp(MaterialApp(
    title: 'Coffee',
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/rowcol': (context) => const RowCol(),
      '/about': (context) => const About(),
    },
  ));
}