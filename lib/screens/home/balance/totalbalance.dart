import 'package:flutter/material.dart';

class TotalBal extends StatefulWidget {
  const TotalBal({super.key});

  @override
  State<TotalBal> createState() => _TotalBalState();
}

class _TotalBalState extends State<TotalBal> {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        // Image.asset('balance.png'),
        Text('Total Bal'),

      ],
    );
  }
}