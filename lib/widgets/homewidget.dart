import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/productdetail_screen.dart';
import 'package:sariilanlar/utils/constants.dart';

import 'heartcontainer.dart';





Card thirdComponent(int index) {
  List<String> prices = [
  '\$567,900',
  '\$335,900',
  '\$289,700',
  '\$470,000',
  '\$224,670',
  '\$490,270',
  '\$300,600',
  '\$651,230',
  '\$980,000',
  '\$300,000',
];


List<String> houseImg = [
  'assets/images/house.jpg',
  'assets/images/house1.jpg',
  'assets/images/house2.jpg',
  'assets/images/house3.jpg',
  'assets/images/house4.jpg',
  'assets/images/house5.jpg',
  'assets/images/house6.jpg',
  'assets/images/house7.jpg',
  'assets/images/house8.jpg',
  'assets/images/house9.jpg'
];

  return Card(
    margin: EdgeInsets.only(bottom: 10.0, left: 8.0, right: 8.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Container(
      height: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(
                  right: 18.0, top: 8.0, left: 8.0, bottom: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(houseImg[index]))),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(
                  top: 8.0,
                  right: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      prices[index],
                      style: kh2,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      addresses[index],
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Text(
                            '3 ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'bds ',
                          ),
                          VerticalDivider(
                            width: 1,
                            color: Colors.grey,
                          ),

                          Text(
                            ' 5 ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'baths ',
                          ),
                          VerticalDivider(
                            width: 1,
                            color: Colors.grey,
                          ),

                          Text(
                            ' 1,767 ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'sqft',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 5,
                            backgroundColor: Colors.green,
                          ),
                          Text(
                            ' House for Sale',
                            style: TextStyle(fontSize: 12),
                          ),
                          Spacer(),
                          HeartContainer(index)

                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}
Card oneComponent(int index) {
  List<String> prices = [
  '\$567,900',
  '\$335,900',
  '\$289,700',
  '\$470,000',
  '\$224,670',
  '\$490,270',
  '\$300,600',
  '\$651,230',
  '\$980,000',
  '\$300,000',
];


List<String> houseImg = [
  'assets/images/house.jpg',
  'assets/images/house1.jpg',
  'assets/images/house2.jpg',
  'assets/images/house3.jpg',
  'assets/images/house4.jpg',
  'assets/images/house5.jpg',
  'assets/images/house6.jpg',
  'assets/images/house7.jpg',
  'assets/images/house8.jpg',
  'assets/images/house9.jpg'
];

  return Card(
    margin: EdgeInsets.only(bottom: 10.0, left: 8.0, right: 8.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Container(
      height: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(
                  right: 18.0, top: 8.0, left: 8.0, bottom: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(houseImg[index]))),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(
                  top: 8.0,
                  right: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "BOGAZICINE LUCKS VILA",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(
                      height: 2,
                    ),
                     Text(
                      prices[index],
                     style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(
                      height: 2,
                    ),

                    
                    SizedBox(
                      height: 5,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                         
                          Text(
                            '3+1 ',
                          ),
                        
                          Text(
                            '| ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '180 m ',
                          ),
                         
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "kandilli /istanbul",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                         
                          Text(
                            ' REMAX',
                            style: TextStyle(fontSize: 12),
                          ),
                          Spacer(),
                          HeartContainer(index)

                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}

