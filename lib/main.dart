import 'package:flutter/material.dart';
import 'package:madness/screens/home/homepage.dart';

import 'screens/home/bottom_br.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Person(),
      home: Bottom(),
  );
  }
}
