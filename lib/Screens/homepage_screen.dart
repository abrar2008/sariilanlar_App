import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/realfilter_screen.dart';
import 'package:sariilanlar/Screens/shopfilter_screen.dart';
import 'package:sariilanlar/Screens/vechiclefilted_screen.dart';


import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/Blogrow.dart';
import 'package:sariilanlar/widgets/carousal.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/custome_dropdown_button.dart';
import 'package:sariilanlar/widgets/homewidget.dart';
import 'package:sariilanlar/widgets/product_list.dart';
import 'package:sariilanlar/widgets/shopinglist.dart';
import 'package:sariilanlar/widgets/text_input.dart';
import 'package:sariilanlar/widgets/vehiclelist.dart';

class HomePagescreen extends StatefulWidget {
  const HomePagescreen({Key? key}) : super(key: key);

  @override
  _HomePagescreenState createState() => _HomePagescreenState();
}

class _HomePagescreenState extends State<HomePagescreen> {
 
List<String> addresses = [
  'The Pearl-Qatar,Doha,Qatar',
  '16523 Choke Cherry Dr,Victor,CA 8728',
  'Station,Hampton,GA 23423',
  '129 Hoper Ln,Folsom,CA 95300',
  '13598 Lagrone St,Powder Springs,GA 30127',
  '4625 Careyback Ave,Elk Grove,CA 7689',
  '4592 Eldywood Ln Batavia,OH 45103',
  '4028 Timber Creek Dr, Cincinnati,OH45623',
  '11456 57th St E Parrish,Fl 341219',
  '67 Marvin Park,Powder Springs,GA 30178',
  '24019 Doverwick Dr Tomball,Tx'
];

  String val3 = 'For Sale With Falling Prices';

  String val = '';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  elevation: 0,
  flexibleSpace: Container(
    height: 70,
    color: primaryColor,
    child:    Container(
                   height: 70,
                   color: primaryColor,
                   child: Column(
                     children: [
                      
               
                       Container(
                          height: 50,
                          color: primaryColor,
                          child:    Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Realfilterscreen()),
            );
                                                    // const Realfilterscreen()));
                                    },
                                    child: Container(
                                      height: 40,
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                "$iconpath/home.svg",
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
                                            const Text(
                                              "REAL ESTATE",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Vechiclefiltedscreen()));
                                    },
                                    child: Container(
                                      height: 40,
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                "$iconpath/car.svg",
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
                                            const Text(
                                              "VEHICLE",
                                              style: TextStyle(
                                                  fontSize: 13, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  
                                  InkWell(
                                    onTap: (){
                                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Shopfilterscreen()
              
              ));
                                    },
                                    child: Container(
                                      height: 40,
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: SvgPicture.asset(
                                                "$iconpath/bag.svg",
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
                                            const Text(
                                              "SHOPPING",
                                              style: TextStyle(
                                                  fontSize: 13, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                           
                            //   InkWell(
                            // onTap: () {},
                            // child: Container(
                            //   width: sizeWidth(context),
                            //   height: 45,
                            //   margin: const EdgeInsets.symmetric(
                            //       horizontal: 20.0, vertical: 15.0),
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     // border: BorderRadius.circular(10),
                            //     borderRadius: BorderRadius.circular(20),
                            //     boxShadow: [
                            //       BoxShadow(
                            //         color: Colors.grey.withOpacity(0.3),
                            //         blurRadius: 2,
                            //         offset: const Offset(0, 5), // Shadow position
                            //       ),
                            //     ],
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                                  //   // ignore: avoid_unnecessary_containers
                                  //   child: Container(
                                  //     child: const Icon(
                                  //       Icons.search,
                                  //       color: Colors.grey,
                                  //     ),
                                  //   ),
                                  // ),
                            //       SizedBox(
                            //         width: sizeWidth(context) * 0.79,
                            //         child: const TextField(
                            //           enabled: false,
                            //           //showCursor: false,
                            //           decoration: InputDecoration(
                            //             hintText: "Search",
                            //             hintStyle: TextStyle(color: Colors.grey),
                            //             enabledBorder: InputBorder.none,
                            //             border: InputBorder.none,
                            //             disabledBorder: InputBorder.none,
                            //             focusedErrorBorder: InputBorder.none,
                            //           ),
                            //         ),
                            //       ),
                                  // Container(
                                  //   height: 30,
                                  //   width: sizeWidth(context) * 0.09,
                                  //   margin: const EdgeInsets.all(5.0),
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(8.0),
                                  //     child: SvgPicture.asset(
                                  //       "$iconpath/pointer.svg",
                                  //   ),
                                  //     ),
                          //         // ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                           
                            ],
                          ),
                       
                        ),
                     ],
                   ),
                 ),
             
  ),
),
     
        body: SingleChildScrollView(
          child: Container(
         
            child: Column(
              children: [
                 Container(
              height: 60,
              color: primaryColor,
              alignment: Alignment.topCenter,
              child: Container(
                width: sizeWidth(context),
                height:45,
                margin: EdgeInsets.symmetric(horizontal: 10.0, ),
             decoration: BoxDecoration(
                      color: Colors.white,
                      // border: BorderRadius.circular(10),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 2,
                          offset: const Offset(0, 5), // Shadow position
                        ),
                      ],
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                      child: Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 24.0,
                        ),
                      ),
                    ),
                    Container(
                      width: sizeWidth(context) * 0.85,
                      child: TextField(
                        //showCursor: false,
                        decoration: InputDecoration(
                          hintText: "Search ",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 30,
                    //   width: sizeWidth(context) * 0.09,
                    //   margin: EdgeInsets.all(5.0),
                    //   decoration: BoxDecoration(
                    //     color: primaryColor,
                    //     borderRadius: BorderRadius.circular(10.0),
                    //   ),
                    //   // child: Padding(
                    //   //   padding: const EdgeInsets.all(8.0),
                    //   //   child: Image.asset(
                    //   //     'assets/icons/filtericon.png',
                    //   //     color: Colors.white,
                    //   //   ),
                    //   // ),
                    // ),
                  ],
                ),
              ),
            ),
              
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      

                  //       Container(
                  //       color: primaryColor,
                  //    height: 150,
                  //    padding: const EdgeInsets.only(left: 10.0, right: 10.0, ),
                  //    child: TextField(
                  //      cursorColor: Colors.white,
                  // onChanged: (value) {
                  //       //Do something with the user input.
                  // },
                  // decoration: InputDecoration(
                    
                  //       hintText: 'Serach.',
                  //       hintStyle: TextStyle(

                        
                  //       ),
                  //       prefixIcon: Container(
                  //         child: const Icon(
                  //           Icons.search,
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                   
                  //       enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide(color: Colors.grey)),
                  // focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide(color: Colors.grey)),
                  // focusedErrorBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide(color: errorColor)),
                  // errorBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide(color: errorColor)),
                  // ),
                  //   ),
                  //  ),
                             
                      mainbodyq(addresses: addresses),
                          
                         
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

class mainbodyq extends StatelessWidget {
  const mainbodyq({
    Key? key,
    required this.addresses,
  }) : super(key: key);

  final List<String> addresses;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
            //  padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start
          ,
          children: [
            const SizedBox(
        height: 10.0,
      ),
            
           //
            Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
              child: Text("Latest Projects",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
         
           Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Container(
                height: 240,
                //sizeheight(context) * 0.37,
                //  width: sizeWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cityImg.length,
                  itemBuilder: (context, index) {
                    return PropertyList(
                      index: index,
                      btntext: "BUY",
                      address: addresses[0],
                      imagepath: cityImg[index],
                      onTapArrow: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return CustumeDialogBox(
                        //         imagepath: cityImg[index],
                        //         textType: "BUY",
                        //       );
                        //     });
                     
                     //
                     },
                    );
                  },
                ),
              ),
            ),
          
    
    
    
             Container(
             padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
              child: Text("Urgent Projects",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
         
           Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                 height: 240,
                //sizeheight(context) * 0.37,
                //  width: sizeWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cityImg.length,
                  itemBuilder: (context, index) {
                    return VehicleList(
                      index: index,
                      btntext: "BUY",
                      address: addresses[0],
                      imagepath: cityImg[index],
                      onTapArrow: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return CustumeDialogBox(
                        //         imagepath: cityImg[index],
                        //         textType: "BUY",
                        //       );
                        //     });
                     
                     //
                     },
                    );
                  },
                ),
              ),
            ),
    
         Container(
              padding: EdgeInsets.only(left: 10,top: 5,bottom: 7),
              child: Text("Falling Price",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
       
           Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 240,
                //sizeheight(context) * 0.37,
                //  width: sizeWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cityImg.length,
                  itemBuilder: (context, index) {
                    return ShopList(
                      index: index,
                      btntext: "BUY",
                      address: addresses[0],
                      imagepath: cityImg[index],
                      onTapArrow: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return CustumeDialogBox(
                        //         imagepath: cityImg[index],
                        //         textType: "BUY",
                        //       );
                        //     });
                     
                     //
                     },
                    );
                  },
                ),
              ),
    
            ),
             
        Container(
          
          child:    appCarousal(context),
        ),


          Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 30.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Properties Near You',
                    style: kh3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'SeeAllScreen');
                    },
                    child: Text(
                      'SEE ALL',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: listForThirdComponent(),
            )
    




            
          ],
        ),
      ),
    );
  }
}
ListView listForThirdComponent() {
  return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, 'HouseDetails');
            },
            child: thirdComponent(index));
      });
}