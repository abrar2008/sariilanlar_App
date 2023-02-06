import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/realfilter_screen.dart';
import 'package:sariilanlar/Screens/shopfilter_screen.dart';
import 'package:sariilanlar/Screens/vechiclefilted_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class BannerForAddProperty extends StatefulWidget {
  @override
  _BannerForAddPropertyState createState() => _BannerForAddPropertyState();
}

class _BannerForAddPropertyState extends State<BannerForAddProperty> {
  bool forSaleSelected = true;
  bool forRentSelected = false;
  bool forBuySelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: 70,
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Realfilterscreen()),
                );
                // const Realfilterscreen()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 40,
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: const Text(
                    "FOR SALE",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Vechiclefiltedscreen()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.3,
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: const Text(
                    "FOR BUY",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Shopfilterscreen()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.3,
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: const Text(
                    "FOR RENT",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
