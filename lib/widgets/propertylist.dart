
import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'dart:math' as math;

import 'package:sariilanlar/utils/constants.dart';

class PropertyList extends StatefulWidget {
  final int index;
 final String address;
  final String imagepath;
 final String btntext;
 final  Function()? onTapArrow;

 const PropertyList({
    Key? key,
    this.index = 0,
    this.address = "",
    this.imagepath = "",
    this.btntext = "",
    this.onTapArrow,
  }) : super(key: key);

  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, 'HouseDetails');
      },
      child: Card(
    
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: sizeWidth(context) * 0.49,
          // margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        colorFilter:
                            ColorFilter.mode(Colors.black26, BlendMode.darken),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.imagepath,
                          //houseImg[index - 1]
                        ))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child:Text("")
                        ),
                          Row(
                            children: [
                              // GestureDetector(
                              //   onTap: () {},
                              //   child: Container(
                              //     padding: EdgeInsets.all(5.0),
                              //     height: 25,
                              //     decoration: BoxDecoration(
                              //       color: Colors.grey.shade600,
                              //       borderRadius: BorderRadius.circular(1.0),
                              //     ),
                              //     child: Center(
                              //       child: Text(
                              //         widget.btntext,
                              //         style: TextStyle(
                              //             fontSize: 12,
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.bold),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                width: 5.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 25,
                                  decoration: BoxDecoration(
                                    // color: Colors.grey.shade600,
                                    borderRadius: BorderRadius.circular(1.0),
                                  ),
                                  child: Center(
                                    child:   Icon(
                                      
                            Icons.favorite_border,
                            color: Colors.white,
                          ) ,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        
                        
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text("QR4,475,300",
                      //         style: TextStyle(
                      //             fontSize: 16,
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold)),
                      //     Row(
                      //       children: [
                      //         InkWell(
                      //           onTap: widget.onTapArrow,
                      //           child: Transform.rotate(
                      //             angle: 130 * math.pi / 180,
                      //             child: Row(
                      //               children: const [
                      //                 CircleAvatar(
                      //                   maxRadius: 10,
                      //                   backgroundColor: Colors.transparent,
                      //                   child: Icon(
                      //                     Icons.arrow_back,
                      //                     size: 16,
                      //                     color: Colors.white,
                      //                   ),
                      //                 ),
                      //                 CircleAvatar(
                      //                   maxRadius: 10,
                      //                   backgroundColor: Colors.transparent,
                      //                   child: Icon(
                      //                     Icons.arrow_forward,
                      //                     size: 16,
                      //                     color: Colors.white,
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10.0,
                      //         ),
                      //         CircleAvatar(
                      //           maxRadius: 10,
                      //           backgroundColor: Colors.transparent,
                      //           child: Icon(
                      //             Icons.favorite_border_outlined,
                      //             size: 20,
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10.0,
                      //         ),
                      //         Container(
                      //             child: CircleAvatar(
                      //               maxRadius: 10,
                      //               child: Icon(
                      //                 Icons.add,
                      //                 size: 16,
                      //                 color: Colors.white,
                      //               ),
                      //               backgroundColor: Colors.transparent,
                      //             ),
                      //             width: 20.0,
                      //             height: 20.0,
                      //             decoration: BoxDecoration(
                      //               border: Border.all(color: Colors.white),
                      //               shape: BoxShape.circle,
                      //             )),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                   
                   //
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Zeekeriyakinde well Positioned',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      children: [
                      Text("Room :2 +1",
                      style: TextStyle(
                        color: Colors.black38
                      ),
                      ),
                      SizedBox(width: 20,),
                       Text("Area 200 ml"),
                      ],
                    ),
                    // Text(
                    //   widget.address,
                    //   style: TextStyle(color: primaryColor, fontSize: 12),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("7.500,000 TL",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      Text(
                          'Istanbul /Bislktas',
                          style: TextStyle(color: primaryColor, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
