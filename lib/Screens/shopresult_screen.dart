import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/homewidget.dart';
import 'package:sariilanlar/widgets/realblog_list.dart';
import 'package:sariilanlar/widgets/shoplistresult.dart';
import 'package:sariilanlar/widgets/vehiclelistresult.dart';

class Shopresultscreen extends StatelessWidget {
  const Shopresultscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: CustomAppBar(
            abtitle: "sarillianlar.com",
            bgcolor: primaryColor,
            // apbarheight: 180,
            showPreferedSize: false,
            onTap: () {
              //  Navigator.pop(context);
            },
          ),


           body: Container(
             child: Column(
               children: [
                 Container(
                   color: Colors.grey[100],
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                          padding: EdgeInsets.all(15),
                         child: Column(
                           children: [
                             Center(
                               child: SvgPicture.asset(
                                           
                                  "$iconpath/fillter.svg",
                                  height:20,
                                  width: 20,
                                  color: Colors.black38,
                                ),
                             ),
                             SizedBox(height: 10,),
                         Text("FILTER" ,
                         style: TextStyle(
                           fontSize: 10,
                           fontWeight: FontWeight.bold

                         ),
                         )
                          ],
                         ),
                       ),
                      Container(
                          padding: EdgeInsets.all(15),
                         child: Column(
                           children: [
                             Center(
                               child: SvgPicture.asset(
                                           
                                  "$iconpath/order.svg",
                                  height:30,
                                  width: 30,
                                  color: Colors.black38,
                                ),
                             ),
                             SizedBox(height: 2,),
                         Text("SORT THROUGH" ,
                         style: TextStyle(
                           fontSize: 10,
                           fontWeight: FontWeight.bold

                         ),
                         )
                          ],
                         ),
                       ),
                      Container(
                          padding: EdgeInsets.all(15),
                         child: Column(
                           children: [
                             Center(
                               child: SvgPicture.asset(
                                           
                                  "$iconpath/category.svg",
                                  height:20,
                                  width: 20,
                                  color: Colors.black38,
                                ),
                             ),
                           SizedBox(height: 10,),
                         Text("APPEARANCE" ,
                         style: TextStyle(
                           fontSize: 10,
                           fontWeight: FontWeight.bold

                         ),
                         )
                          ],
                         ),
                       ),
                      Container(
                          padding: EdgeInsets.all(15),
                         child: Column(
                           children: [
                             Center(
                               child: SvgPicture.asset(
                                           
                                  "$iconpath/notification1.svg",
                                  height:20,
                                  width: 20,
                                  color: Colors.black38,
                                ),
                             ),
                            SizedBox(height: 10,),
                         Text("SAVE CALL" ,
                         style: TextStyle(
                           fontSize: 10,
                           fontWeight: FontWeight.bold

                         ),
                         )
                          ],
                         ),
                       ),
                      
                    //
                    ],
                   ),
                 ),

                  Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, 'HouseDetails');
              },
              child: oneComponent(index)),
        );
      }),
                  // ListView.builder(
                  //   scrollDirection: Axis.vertical,
                  //   itemCount: RealLImgList.length,
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   itemBuilder: (context, index) {
                  //     return Shopresultlist(
                  //       index: index,
                  //       address: "heloodfksaf dsfsahf",
                  //       imagepath: productImgList[index],
                  //     );
                  //   },
                  // ),
                ),
              ),
               ],
             ),
           ),
           
    );
  }
}