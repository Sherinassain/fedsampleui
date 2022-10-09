import 'package:bankui/pages/containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Transaction_page extends StatelessWidget {
  const Transaction_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'TRANSACTIONS',
          style: TextStyle(color: Colors.blue),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions:const [
           Padding(
            padding: EdgeInsets.all(8.0),
            child:  ImageIcon(
               AssetImage('assets/question.png'),
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screensize.width * 0.02,
                horizontal: screensize.width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: screensize.width * 0.04,
                ),
                Container(
                  width: screensize.width * 0.9,
                  height: screensize.width * 0.14,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:const [
                         BoxShadow(color: Colors.grey, blurRadius: 2)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ImageIcon(
                         AssetImage('assets/serviceicon/filter.png'),
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      const Text(
                        'Apply Filter',
                        style:  TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.width * 0.04,
          ),
          Container(
            width: screensize.width,
            height: screensize.width * 0.07,
            decoration: BoxDecoration(color: Colors.grey[400]),
            child: Row(
              children:const [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child:  Text(
                    'Mon,26 Sep 2022',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.width * 0.04,
          ),
          //item container
          Expanded(
            child: ListView(
              children: [
                Column(
                  children:const [
                     Fund_container(
                        amount: '- \$ 180',
                        status: 'DEBIT',
                        time: '04:44 PM',
                        Color: Colors.black),
                     Fund_container(
                        amount: '- \$ 120',
                        status: 'CREDIT',
                        time: '03:24 AM',
                        Color: Colors.green),
                     Fund_container(
                        amount: '- \$ 90',
                        status: 'CEBIT',
                        time: '02:00 PM',
                        Color: Colors.green),
                     Fund_container(
                        amount: '- \$ 100',
                        status: 'DEBIT',
                        time: '04:30 AM',
                        Color: Colors.black),
                     Fund_container(
                        amount: '- \$ 330',
                        status: 'CREDIT',
                        time: '01:20 PM',
                        Color: Colors.green),
                     Fund_container(
                        amount: '- \$ 220',
                        status: 'DEBIT',
                        time: '04:44 PM',
                        Color: Colors.black),
                     Fund_container(
                        amount: '- \$ 180',
                        status: 'DEBIT',
                        time: '05:45 AM',
                        Color: Colors.black),
                     Fund_container(
                        amount: '- \$ 5000',
                        status: 'CREDIT',
                        time: '08:30 PM',
                        Color: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
