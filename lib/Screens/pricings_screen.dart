import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/realblog_list.dart';
import 'package:sariilanlar/widgets/shoplistresult.dart';
import 'package:sariilanlar/widgets/vehiclelistresult.dart';

class PricingsScreen extends StatelessWidget {
  const PricingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: CustomAppBar(
            abtitle: "Pricing Payment",
            bgcolor: primaryColor,
            // apbarheight: 180,
            showPreferedSize: false,
            onTap: () {
              //  Navigator.pop(context);
            },
          ),


           body: Container(
              padding: const EdgeInsets.all(18.0),
             child: Column(
               children: [
                 Container(
               
                    
                   child: Row(
                     children: [
                       Expanded(
                         child: Container(
                         width: MediaQuery.of(context).size.width *0.39,
                                 
                                   padding: const EdgeInsets.all(15.0),
                                    decoration: new BoxDecoration(
                                   color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(10.0),
                                       topRight: const Radius.circular(10.0),
                                       bottomLeft: const Radius.circular(10.0),
                                       bottomRight: const Radius.circular(10.0),
                                     )
                                   ),
                           child: Column(
                             children: [
                               Container(
                                
                                 child: Row(
                                   children: [
                                     Container(
                                         decoration: new BoxDecoration(
                                color: primaryColor,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(30.0),
                                       topRight: const Radius.circular(30.0),
                                       bottomLeft: const Radius.circular(30.0),
                                       bottomRight: const Radius.circular(30.0),
                                     )
                                   ),
                                     
                                       height: 50,
                                       width: 50,
                                       
                                       child:Center(
                                         child: Image.asset("assets/images/price.png",
                                         width: 20,
                                         height:20,
                                         color: Colors.black,
                                         ),
                                       )
                                     ),
                                     SizedBox(width: 10,),
                                     Container(
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Basic",
                                           textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           ),
                                            Text("Package",
                                              textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("100 TL Balance",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                            SizedBox(height: 8,),
                            //
                               Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("1000 Ads +20 Bouns",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                             SizedBox(height: 8,),
                             Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("04 Yellow Ads",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                              SizedBox(height: 20,),
                           Container(
                             alignment: Alignment.topLeft,
                             child: Text("1000TL",
                             textAlign: TextAlign.start,
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.black,
                               fontWeight: FontWeight.bold
                             ),
                             
                             ),
                           ),
                              SizedBox(height: 20,),
                                Container(
                          width: sizeWidth(context),
                          // margin: EdgeInsets.symmetric(
                          //     horizontal: sizeWidth(context) * 0.09),
                          height: 45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ElevatedButton(
                            child: const Text(
                              'SELECT PACKAGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            onPressed: () {
                             
                               
                             
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              textStyle: const TextStyle(
                                fontSize: 11,
                              fontWeight: FontWeight.bold
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                                             ),
                       
                             ],
                           ),
                         ),
                       ),
                          
                          SizedBox(width: 5,),
                          Expanded(
                            child: Container(
                                                 width: MediaQuery.of(context).size.width *0.49,
                                 
                                   padding: const EdgeInsets.all(15.0),
                                    decoration: new BoxDecoration(
                                      color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(10.0),
                                          topRight: const Radius.circular(10.0),
                                          bottomLeft: const Radius.circular(10.0),
                                          bottomRight: const Radius.circular(10.0),
                                        )
                                      ),
                                                   child: Column(
                             children: [
                               Container(
                                
                                 child: Row(
                                   children: [
                                     Container(
                                         decoration: new BoxDecoration(
                                   color: primaryColor,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(30.0),
                                          topRight: const Radius.circular(30.0),
                                          bottomLeft: const Radius.circular(30.0),
                                          bottomRight: const Radius.circular(30.0),
                                        )
                                      ),
                                     
                                       height: 50,
                                       width: 50,
                                       
                                       child:
                                       Center(
                                         child: Image.asset("assets/images/price.png",
                                         width: 20,
                                         height:20,
                                         color: Colors.black,
                                         ),
                                       )
                                     ),
                                     SizedBox(width: 10,),
                                     Container(
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Standard",
                                           textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           ),
                                            Text("Package",
                                              textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("100 TL Balance",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                            SizedBox(height: 8,),
                            //
                               Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("1000 Ads +20 Bouns",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                             SizedBox(height: 8,),
                             Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("04 Yellow Ads",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                              SizedBox(height: 20,),
                                                   Container(
                             alignment: Alignment.topLeft,
                             child: Text("1000TL",
                             textAlign: TextAlign.start,
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.black,
                               fontWeight: FontWeight.bold
                             ),
                             
                             ),
                                                   ),
                              SizedBox(height: 20,),
                                Container(
                                                  width: sizeWidth(context),
                                                  // margin: EdgeInsets.symmetric(
                                                  //     horizontal: sizeWidth(context) * 0.09),
                                                  height: 45,
                                                  decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  child: ElevatedButton(
                            child: const Text(
                              'SELECT PACKAGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            onPressed: () {
                             
                               
                             
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              textStyle: const TextStyle(
                                fontSize: 11,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                                                  ),
                                                ),
                          
                             ],
                                                   ),
                                                 ),
                          )
                     
                     //
                     
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                   Container(
               
                    
                   child: Row(
                     children: [
                       Expanded(
                         child: Container(
                         width: MediaQuery.of(context).size.width *0.39,
                                 
                                   padding: const EdgeInsets.all(15.0),
                                    decoration: new BoxDecoration(
                                   color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(10.0),
                                       topRight: const Radius.circular(10.0),
                                       bottomLeft: const Radius.circular(10.0),
                                       bottomRight: const Radius.circular(10.0),
                                     )
                                   ),
                           child: Column(
                             children: [
                               Container(
                                
                                 child: Row(
                                   children: [
                                     Container(
                                         decoration: new BoxDecoration(
                                color: primaryColor,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(30.0),
                                       topRight: const Radius.circular(30.0),
                                       bottomLeft: const Radius.circular(30.0),
                                       bottomRight: const Radius.circular(30.0),
                                     )
                                   ),
                                     
                                       height: 50,
                                       width: 50,
                                       
                                       child:Center(
                                         child: Image.asset("assets/images/price.png",
                                         width: 20,
                                         height:20,
                                         color: Colors.black,
                                         ),
                                       )
                                     ),
                                     SizedBox(width: 10,),
                                     Container(
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Premium",
                                           textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           ),
                                            Text("Package",
                                              textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("100 TL Balance",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                            SizedBox(height: 8,),
                            //
                               Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("1000 Ads +20 Bouns",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                             SizedBox(height: 8,),
                             Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: new BorderRadius.only(
                                       topLeft: const Radius.circular(40.0),
                                       topRight: const Radius.circular(40.0),
                                       bottomLeft: const Radius.circular(40.0),
                                       bottomRight: const Radius.circular(40.0),
                                     )
                                   ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("04 Yellow Ads",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                              SizedBox(height: 20,),
                           Container(
                             alignment: Alignment.topLeft,
                             child: Text("2000TL",
                             textAlign: TextAlign.start,
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.black,
                               fontWeight: FontWeight.bold
                             ),
                             
                             ),
                           ),
                              SizedBox(height: 20,),
                                Container(
                          width: sizeWidth(context),
                          // margin: EdgeInsets.symmetric(
                          //     horizontal: sizeWidth(context) * 0.09),
                          height: 45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ElevatedButton(
                            child: const Text(
                              'SELECT PACKAGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            onPressed: () {
                             
                               
                             
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              textStyle: const TextStyle(
                                fontSize: 11,
                              fontWeight: FontWeight.bold
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                                             ),
                       
                             ],
                           ),
                         ),
                       ),
                          
                          SizedBox(width: 5,),
                          Expanded(
                            child: Container(
                                                 width: MediaQuery.of(context).size.width *0.49,
                                 
                                   padding: const EdgeInsets.all(15.0),
                                    decoration: new BoxDecoration(
                                      color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(10.0),
                                          topRight: const Radius.circular(10.0),
                                          bottomLeft: const Radius.circular(10.0),
                                          bottomRight: const Radius.circular(10.0),
                                        )
                                      ),
                                                   child: Column(
                             children: [
                               Container(
                                
                                 child: Row(
                                   children: [
                                     Container(
                                         decoration: new BoxDecoration(
                                   color: primaryColor,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(30.0),
                                          topRight: const Radius.circular(30.0),
                                          bottomLeft: const Radius.circular(30.0),
                                          bottomRight: const Radius.circular(30.0),
                                        )
                                      ),
                                     
                                       height: 50,
                                       width: 50,
                                       
                                       child:
                                       Center(
                                         child: Image.asset("assets/images/price.png",
                                         width: 20,
                                         height:20,
                                         color: Colors.black,
                                         ),
                                       )
                                     ),
                                     SizedBox(width: 10,),
                                     Container(
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Unlimited",
                                           textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           ),
                                            Text("Package",
                                              textAlign: TextAlign.start,
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                           ),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("100 TL Balance",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                            SizedBox(height: 8,),
                            //
                               Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("1000 Ads +20 Bouns",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                             SizedBox(height: 8,),
                             Row(
                                children: [
                                  Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                          bottomLeft: const Radius.circular(40.0),
                                          bottomRight: const Radius.circular(40.0),
                                        )
                                      ),
                                    height: 20,
                                    width: 20,
                                  
                                    child: Center(child: Icon(Icons.check,
                                    size: 15,
                                    color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(width: 4,),
                               Text("04 Yellow Ads",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.black
                               ),
                               )
                               
                                ],
                              ),
                              SizedBox(height: 20,),
                                                   Container(
                             alignment: Alignment.topLeft,
                             child: Text("4000TL",
                             textAlign: TextAlign.start,
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.black,
                               fontWeight: FontWeight.bold
                             ),
                             
                             ),
                                                   ),
                              SizedBox(height: 20,),
                                Container(
                                                  width: sizeWidth(context),
                                                  // margin: EdgeInsets.symmetric(
                                                  //     horizontal: sizeWidth(context) * 0.09),
                                                  height: 45,
                                                  decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  child: ElevatedButton(
                            child: const Text(
                              'SELECT PACKAGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            onPressed: () {
                             
                               
                             
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              textStyle: const TextStyle(
                                fontSize: 11,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                                                  ),
                                                ),
                          
                             ],
                                                   ),
                                                 ),
                          )
                     
                     //
                     
                     ],
                   ),
                 )
              
              //
               ],
             )
             ),
           );
           
   
  }
}