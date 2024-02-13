import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[
          // Icon(Icons.person_2),
          Image.asset('lib/images/Vector.png'),
  
          Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('HI, Segun Perters'),
              Text('Welcome, lets make payment')
            ],
          ),
          
            Image.asset('lib/images/noti.png'),

        ]

      );
  }
}