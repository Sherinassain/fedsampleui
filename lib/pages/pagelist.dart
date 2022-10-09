import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'containers.dart';

class Page_list extends StatelessWidget {
  const Page_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screensize.width * 0.4,
                width: screensize.width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 107, 193, 233)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 37,
                            ),
                            SizedBox(
                              width: screensize.width * 0.04,
                            ),
                            Container(
                              width: screensize.width * 0.35,
                              height: screensize.width * 0.09,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/bb.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const ImageIcon(
                                 AssetImage('assets/wallet.png')),
                            SizedBox(
                              width: screensize.width * 0.05,
                            ),
                            const ImageIcon(
                              AssetImage('assets/bell (1).png'),
                              size: 20,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              width: screensize.width * 0.05,
                            ),
                            const ImageIcon(
                              AssetImage('assets/power.png'),
                              size: 20,
                              color: Colors.black87,
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              Positioned(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screensize.width * 0.06),
                  child: Container(
                      margin: EdgeInsets.only(top: screensize.width * 0.22),
                      height: screensize.width * 0.28,
                      width: screensize.width * 0.91,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Item_containers(
                              imagepath: 'assets/send-money.png',
                              title: 'Send Money'),
                          Item_containers(
                              imagepath: 'assets/debit-card.png', title: 'Upi'),
                          Item_containers(
                              imagepath: 'assets/qr-code.png',
                              title: 'Scan & Pay'),
                          Item_containers(
                              imagepath: 'assets/more.png', title: 'More'),
                        ],
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: screensize.width * 0.38,
              width: screensize.width * 0.95,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: screensize.width * 0.1,
                                  height: screensize.width * 0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/user (1).png'),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: screensize.width * 0.03,
                                ),
                                Text(
                                  'Account',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            ),

                            ///
                            Row(
                              children: const [
                                Text(
                                  'View All Accounts',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screensize.width * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'XXXX XXXX 4203',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Text(
                              'Check Balance',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screensize.width * 0.02,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screensize.width * 0.95,
                    height: screensize.width * 0.14,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:  BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: screensize.width * 0.1,
                                height: screensize.width * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/passbookicon.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: screensize.width * 0.03,
                              ),
                              const Text(
                                'FedBook',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          Row(
                            children:const [
                               Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screensize.width * 0.02,
                  ),
                  const Text(
                    'Services',
                    style:  TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                       Service_containers(
                          imagepath: 'assets/serviceicon/mobile.png',
                          title: 'Recharge'),
                       Service_containers(
                          imagepath: 'assets/debit-card.png',
                          title: 'Bill payments'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/electrical-energy.png',
                          title: 'Electricity'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/mortarboard.png',
                          title: 'Mfee'),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                       Service_containers(
                          imagepath: 'assets/serviceicon/credit-card.png',
                          title: 'Credit card'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/gift-card.png',
                          title: 'Gift card'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/toll-road.png',
                          title: 'Fast tag'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/programmer.png',
                          title: 'Forex'),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:const [
                       Service_containers(
                          imagepath: 'assets/serviceicon/taxi-driver.png',
                          title: 'Cabs'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/flight.png',
                          title: 'Flights'),
                       Service_containers(
                          imagepath: 'assets/serviceicon/bus.png',
                          title: 'Bus'),
                       Service_containers(
                          imagepath: 'assets/more.png', title: 'All'),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
