
import 'package:sariilanlar/Screens/vehicledetail.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class VehicleList extends StatefulWidget {
  final int index;
 final String address;
  final String imagepath;
 final String btntext;
 final  Function()? onTapArrow;

 const VehicleList({
    Key? key,
    this.index = 0,
    this.address = "",
    this.imagepath = "",
    this.btntext = "",
    this.onTapArrow,
  }) : super(key: key);

  @override
  _VehicleListState createState() => _VehicleListState();
}

class _VehicleListState extends State<VehicleList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  VehicleDetails()),
  );
      },
      child: Card(
        elevation: 1.5,
        
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
         
          width: sizeWidth(context) * 0.4,
          // margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height *  0.15,
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
                      'Nissan Armada',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Platinum 4WD 2022',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      // padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Body Type',
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 10),
                                ),
                                Text(
                            ': SUV',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 10,
                                fontWeight: FontWeight.bold
                                ),
                          ),
                              ],
                            ),
                          ),
                           
                    
                          //
                    
                         
                         
                        ],
                      ),
                    ),
                     SizedBox(height: 2,),
                     Row(
                            children: [
                              
                            
                              Text(
                                'Location ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                               Text(
                                'Istanbul / Bisiktas',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10,
                                    fontWeight: FontWeight.bold
                                    ),
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TRY 8,900',
                          style: TextStyle(color:primaryColor, fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          
                          child: Center(
                            child: Icon(Icons.favorite_border,
                            size: 20,
                            )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
