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
            style: TextStyle(
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
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
