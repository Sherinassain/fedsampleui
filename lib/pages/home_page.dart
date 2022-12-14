import 'dart:ui';

import 'package:bankui/pages/containers.dart';
import 'package:bankui/pages/pagelist.dart';
import 'package:bankui/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int _selectedindex = 0;
  List pages = [
    const Page_list(),
    const Transaction_page(),
  ];

  @override
  Widget build(BuildContext context) {
    ///bankui
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedindex,
            selectedItemColor: Colors.blue,
            selectedLabelStyle: const TextStyle(color: Colors.blue),
            unselectedItemColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
            onTap: (value) {
         setState(() {
                _selectedindex = value;
         });
            },
            items:const [
               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
               BottomNavigationBarItem(
                  icon: ImageIcon(
                AssetImage('assets/transaction.png'),
              ),label: 'Transaction'),
            ]),
            body: pages[_selectedindex],
            );
  }
}
