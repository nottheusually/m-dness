
import 'package:flutter/material.dart';
import 'package:madness/screens/home/Services/airtime.dart';
import 'package:madness/screens/home/balance/totalbalance.dart';
import 'package:madness/screens/home/pay.dart';
import 'package:madness/screens/home/person.dart';

import 'usecard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true, bottom: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Person(),
                
                SizedBox(height: 15,),
                
                //container consists amount/balance
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('lib/images/Rectangle 4229.png'))
                  ),
                
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                
                      //icon, total bal n icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.how_to_vote, size: 25, color: Colors.green,),
                          Text("Total Balance"),
                          Icon(Icons.visibility, size: 25, color: Colors.grey,),
                        ],
                      ),
                
                      // Size(width, height)
                      SizedBox(height: 10,),
                
                      //balance
                      Text("N 500, 000, 000", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600, color: Colors.black
                      ),),
                
                      SizedBox(height: 10,),
                
                    ],
                  ),
                ),
                
                //withdraw/deposit column
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Row(
                    children: [
                      Text('Withdrawal/Deposit', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                
                
                
                SizedBox(height: 10,),
                
                
                //Withdrawal/deposit
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UseCard(
                      images: 'lib/images/credit-card.png', text: 'Use Card',
                      height: 70, width: 70,
                    ),
                
                    UseCard(
                      images: 'lib/images/eNaira.png', text: 'e- Naira',
                      height: 70, width: 70,
                    ),
                
                   
                    UseCard(
                      images: 'lib/images/PayAttitude.png', text: 'PayAttitude',
                      height: 70, width: 70,
                    ),
                    UseCard(
                      images: 'lib/images/image.png', text: 'CorelPay',
                      height: 70, width: 70,
                    ),
                  ],
                ),
                
                
                 SizedBox(height: 20,),
                
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return PayPage();
                        }));
                      },
                       child: UseCard(
                        images: 'lib/images/Capa.png', text: 'Pay By \n Transfer', height: 60, width: 60,
                                         ),
                     ),
            
                    UseCard(
                      images: 'lib/images/wallet.png', text: 'Deposit \n With Card',
                      height: 60, width: 60,
                    ),
                    UseCard(
                      images: 'lib/images/cash-payment.png', text: 'Deposit \n With Cash',
                      height: 60, width: 60,
                    ),
                    UseCard(
                      images: 'lib/images/application 1.png', text: 'Close Menu',
                      height: 60, width: 60,
                    ),
                  ],
                ),
                
                //Row for services
                
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Row(
                    children: [
                      Text('Services', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                 SizedBox(height: 15,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UseCard(
                          images: 'lib/images/phone-call.png', text: 'CorelPay',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/mobile-data.png', text: 'CorelPay',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/power.png', text: 'CorelPay',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/tv.png', text: 'CorelPay',
                          height: 60, width: 60,
                        ),
                  ],
                ),
                
                
                
                
                //row for my Balance
                 Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Row(
                    children: [
                      Text('My Balance', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                 SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UseCard(
                          images: 'lib/images/balance.png', text: 'Total Bal',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/deposit.png', text: 'Withdrawals',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/withdrawal.png', text: 'Deposits',
                          height: 60, width: 60,
                        ),
                        UseCard(
                          images: 'lib/images/earnings.png', text: 'Earnings',
                          height: 60, width: 60,
                        ),
                  ],
                
                  //Row for home
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     UseCard(
                //           images: 'lib/images/Group1.png', text: 'Home',
                //           height: 10, width: 10,
                //         ),
                //         UseCard(
                //           images: 'lib/images/Group.png', text: 'Pay',
                //           height: 10, width: 10,
                //         ),
                //         UseCard(
                //           images: 'lib/images/allet1.png', text: 'Wallet',
                //           height: 10, width: 10,
                //         ),
                //         UseCard(
                //           images: 'lib/images/application.png', text: 'More',
                //           height: 10, width: 10,
                //         ),
                //   ],
                // ),
                 //
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}