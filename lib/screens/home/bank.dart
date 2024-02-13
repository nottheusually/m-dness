import 'package:flutter/material.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image.asset('lib/images/bank.png'),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Pay By'),
              Text('Transfer')
            ],
          ),

      ],

      
     
    );
  }
}