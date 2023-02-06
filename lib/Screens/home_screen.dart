import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/realfilter_screen.dart';
import 'package:sariilanlar/Screens/shopfilter_screen.dart';
import 'package:sariilanlar/Screens/vechiclefilted_screen.dart';


import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/custome_dropdown_button.dart';
import 'package:sariilanlar/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items3 = [
    'For Sale With Falling Prices',
    'UnitedArabEmaratas',
    'All',
    'item4'
  ];

  String val3 = 'For Sale With Falling Prices';

  String val = '';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        // key: _scaffoldKey,
        // appBar: CustomAppBar(
        //   abtitle: "Sariilanlar.com",
        //   bgcolor: primaryColor,
        //   apbarheight: 180,
        //   showPreferedSize: true,
        //   onTap: () {},
        // ),
        // bottomNavigationBar:
        //     // SizedBox(
        //     //   height: 50,
        //     //  child:
        //     BottomNavigationBar(
        //         elevation: 1.0,
        //         //  onTap: _onItemTapped,
        //         // currentInde
        //         //x: _currentSelected,
        //         // selectedItemColor: primaryColor,
        //         // unselectedItemColor: Colors.grey,
        //         showSelectedLabels: false,
            
        //         showUnselectedLabels: false,
        //         type: BottomNavigationBarType.fixed,
        //         items: [
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.white,
        //           icon: SvgPicture.asset(
        //             "$iconpath/home.svg",
        //             color: /* _currentSelected == 3 ? primaryColor :  */ Colors
        //                 .grey,
        //             height: 20,
        //             width: 20,
        //           ),
        //           //label: ""
        //           title: Padding(padding: EdgeInsets.all(0))),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset(
        //             "$iconpath/pointer.svg",
        //             color: /* _currentSelected == 3 ? primaryColor :  */ Colors
        //                 .grey,
        //             height: 20,
        //             width: 20,
        //           ),
        //           //  label: "",
        //           title: Padding(padding: EdgeInsets.all(0))),
        //       BottomNavigationBarItem(
        //           icon: Container(
        //             height: 30.0,
        //             width: 30.0,
        //             decoration: BoxDecoration(
        //                 color: primaryColor, shape: BoxShape.circle),
        //             child: Icon(
        //               Icons.add,
        //               color: Colors.white,
        //               size: 30,
        //             ),
        //             // SvgPicture.asset(
        //             //   "$iconpath/plus.svg",
        //             //   color: Colors.white,
        //             //   / color: _currentSelected == 2 ? primaryColor : Colors.grey,
        //             //   height: 28,
        //             //   width: 28,
        //             // ),
        //           ),
        //           // label: "",
        //           title: Padding(padding: EdgeInsets.all(0))),
        //       BottomNavigationBarItem(
                
        //           icon: SvgPicture.asset(
        //             "$iconpath/chat.svg",
        //             color: /* _currentSelected == 3 ? primaryColor :  */ Colors
        //                 .grey,
        //             height: 20,
        //             width: 20,
        //           ),
        //           // label: "",
        //           title: Padding(padding: EdgeInsets.all(0))),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset(
        //             "$iconpath/user.svg",
        //             color: /* _currentSelected == 3 ? primaryColor :  */ Colors
        //                 .grey,
        //             height: 20,
        //             width: 20,
        //           ),
        //           //  label: "",
        //           title: Padding(padding: EdgeInsets.all(0))),
        //     ]),
      
      //
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                color: primaryColor,
                child:    Column(
                  children: [
                    
                //       InkWell(
                //   onTap: () {},
                //   child: Container(
                //     width: sizeWidth(context),
                //     height: 45,
                //     margin: const EdgeInsets.symmetric(
                //         horizontal: 20.0, vertical: 15.0),
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       // border: BorderRadius.circular(10),
                //       borderRadius: BorderRadius.circular(20),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.3),
                //           blurRadius: 2,
                //           offset: const Offset(0, 5), // Shadow position
                //         ),
                //       ],
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                //           // ignore: avoid_unnecessary_containers
                //           child: Container(
                //             child: const Icon(
                //               Icons.search,
                //               color: Colors.grey,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: sizeWidth(context) * 0.79,
                //           child: const TextField(
                //             enabled: false,
                //             //showCursor: false,
                //             decoration: InputDecoration(
                //               hintText: "Search",
                //               hintStyle: TextStyle(color: Colors.grey),
                //               enabledBorder: InputBorder.none,
                //               border: InputBorder.none,
                //               disabledBorder: InputBorder.none,
                //               focusedErrorBorder: InputBorder.none,
                //             ),
                //           ),
                //         ),
                //         // Container(
                //         //   height: 30,
                //         //   width: sizeWidth(context) * 0.09,
                //         //   margin: const EdgeInsets.all(5.0),
                //         //   child: Padding(
                //         //     padding: const EdgeInsets.all(8.0),
                //         //     child: SvgPicture.asset(
                //         //       "$iconpath/pointer.svg",
                //         //   ),
                //         //     ),
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
                  
                  
                  //
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
                 
                 
                 
                  ],
                ),
             
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // CustomeDropDownButton(
              //     label: 'Location',
              //     value: val3,
              //     itemList: items3,
              //     onChanged: (String? value) {
              //       return setState(
              //         () => val3 = value!,
              //       );
              //     }),
              // const SizedBox(
              //   height: 20.0,  
              // ),
              SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: productImgList.length,
                  
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BlogList(
                      index: index,
                      address: "heloodfksaf dsfsahf",
                      imagepath: productImgList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
   
    );
  }
}
