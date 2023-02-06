import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';


class BathroomContainer extends StatefulWidget {
  @override
  _BathroomContainerState createState() => _BathroomContainerState();
}

class _BathroomContainerState extends State<BathroomContainer> {
  List<bool> bathRoomsSelected = [
    true,
    false,
    false,
    false,
    false,
  ];

  // List<bool> bathRoomsSelected = [true, true, true, true, true];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      //padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BATHROOMS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               GestureDetector(
                onTap: () {
                  setState(() {
                  
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color:  primaryColor,
                         
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(10.0))),
                  child: Center(
                    child: Text(
                      'ANY',
                      style: TextStyle(
                          color:Colors.white
                             ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[1] = !  bathRoomsSelected[1];
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[1]
                          ? primaryColor
                          : Color(0xfffafafa),
                      
                          
                          ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: bathRoomsSelected[1]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
            
            //
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[1] = !  bathRoomsSelected[1];
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  color:
                      bathRoomsSelected[1] ? primaryColor : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: bathRoomsSelected[1]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[2] = !  bathRoomsSelected[2];
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  color:
                      bathRoomsSelected[2] ? primaryColor : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: bathRoomsSelected[2]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[3] = !  bathRoomsSelected[3];
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  color:
                      bathRoomsSelected[3] ? primaryColor : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: bathRoomsSelected[3]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[4] = !  bathRoomsSelected[4];
                  });
                },
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[4]
                          ? primaryColor
                          : Color(0xfffafafa),
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(30.0))),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: bathRoomsSelected[4]
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        
        
        ],
      ),
    );
  }
}
