import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/notification_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/property_details_components.dart';




class VehicleDetails extends StatefulWidget {
  @override
  _VehicleDetailsState createState() => _VehicleDetailsState();
}

List<String> prices=['\$567,900','\$335,900','\$289,700','\$470,000','\$224,670','\$490,270','\$300,600','\$651,230','\$980,000','\$300,000',];
List<String> addresses=['16523 Choke Cherry Dr,Victorville,CA 8728','Station,Hampton,GA 23423','129 Hoper Ln,Folsom,CA 95300','13598 GA 30127','4625 Careyback CA 7689','4592 Eldywood,OH 45103','4028 Timber Creek ,OH45623','11456 57th St E Parrish','67 Marvin Park,GA 30178','24019 Doverwick,Tx' ];
List<String> houseImg=['assets/images/house.jpg','assets/images/house1.jpg','assets/images/house2.jpg','assets/images/house3.jpg','assets/images/house4.jpg','assets/images/house5.jpg','assets/images/house6.jpg','assets/images/house7.jpg','assets/images/house8.jpg','assets/images/house9.jpg'];

class _VehicleDetailsState extends State<VehicleDetails> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          abtitle: 'Vehicle Details',
          showPreferedSize: false,
          
         // bgcolor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Carousel(
                          dotSize: 4,
                          dotBgColor: Colors.transparent,
                          borderRadius: false,
                          showIndicator: true,
                          noRadiusForIndicator: false,
                          images: [
                            ExactAssetImage(
                              'assets/images/house1.jpg',
                            ),
                            ExactAssetImage('assets/images/house2.jpg'),
                            ExactAssetImage('assets/images/house3.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                       
                  //      //
                  //       SizedBox(
                  //         height: MediaQuery.of(context).size.height * 0.12,
                  //       ),
                      
                      
                      
                  //     ],
                  //   ),
                  // ),
                 
                ],
              ),
 firstCompOfDetails(context),
              overtabbar(context)
             
              // secondComponentOfDetails(context),
              // // thirdComponentOfPhotos(context),
              // fourthComponent(context),
              // // fifthComponent(context),
              // sixthComponent(context),
              // Container(
              //   height: 150,
              //   child: houseDetailsList(),
              // )
            ],
          ),
        ),
      ),
    );
  }
  houseDetailsList(){
    return ListView.builder( itemCount:houseImg.length,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
      return  Row(
        children: [
          index==0? 
          SizedBox(width: 8,):
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
            margin: EdgeInsets.only(top: 8.0,bottom: 8.0,right: 8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 140,
              margin: EdgeInsets.only(right: 8.0),
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.white),
              child: Row(
                children: [
                  Expanded(flex:2,
                    child: Container(
                      margin: EdgeInsets.only(right: 6),
                      height: double.infinity,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(houseImg[index]))),
                    ),
                  ),
                  Expanded(flex: 3,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prices[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor,fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                Text(
                                  addresses[index],
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: Colors.grey, fontSize: 11,),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Text(
                                  '3 ',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                ),
                                Text(
                                  'bds ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                VerticalDivider(
                                  width: 1,
                                  color: Colors.grey,
                                ),

                                Text(
                                  '5 ',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                ),
                                Text(
                                  'baths ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                VerticalDivider(
                                  width: 1,
                                  color: Colors.grey,
                                ),

                                Text(
                                  '1750 ',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                ),
                                Text(
                                  'sqft',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text(
                                'Agent: ',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 13),
                              ),
                              Text(
                                'Chapman Ford',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 13),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.star,size: 16,color: Colors.orange,),
                              Icon(Icons.star,size: 16,color: Colors.orange,),
                              Icon(Icons.star,size: 16,color:Colors.orange),
                              Icon(Icons.star,size: 16,color: Colors.orange,),
                              Icon(Icons.star,size: 16,color:Colors.orange,),
                              Text('(0 Reviews)',style: TextStyle(color: Colors.grey),)
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
        ],
      );
    });
  }
}
