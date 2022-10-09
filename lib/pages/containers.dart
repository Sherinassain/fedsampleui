import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Item_containers extends StatelessWidget {
  final String imagepath;
  final String title;
  const Item_containers(
      {Key? key, required this.imagepath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            width: screensize.width * 0.1,
            height: screensize.width * 0.1,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screensize.width * 0.05,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class Service_containers extends StatelessWidget {
  final String imagepath;
  final String title;
  const Service_containers(
      {Key? key, required this.imagepath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: screensize.width * 0.08,
            height: screensize.width * 0.08,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screensize.width * 0.03,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class Fund_container extends StatelessWidget {
  final String time;
  final String amount;
  final String status;
  final Color;

  const Fund_container(
      {Key? key,
      required this.amount,
      required this.status,
      required this.time,required this.Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width,
      height: screensize.width * 0.17,
      decoration:const BoxDecoration(
        border: Border.symmetric(
            horizontal: BorderSide(
          width: 1,
          color: Colors.grey,
        )),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/send-money.png'),
          ),
          SizedBox(
            width: screensize.width * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screensize.width * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'FUND TRANSFER',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: screensize.width * 0.3,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        color: Color,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.02,
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: screensize.width * 0.45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screensize.width * 0.04),
                    child: Text(
                      status,
                      style: TextStyle(
                          color: Color,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
