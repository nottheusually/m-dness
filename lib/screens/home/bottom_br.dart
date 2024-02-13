import 'package:flutter/material.dart';
import 'package:madness/screens/home/homepage.dart';
import 'package:madness/screens/home/pay.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;

  List mybars = [
    HomePage(),
    PayPage(),
    WalletPage(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true, bottom: true,
      child: Scaffold(
        body: mybars[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          elevation: 2,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),



        ]),

      ),
    );
  }
}