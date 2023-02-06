import 'package:carousel_pro/carousel_pro.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:sariilanlar/Screens/map_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

Stack customCarousal(BuildContext context) {
  return Stack(
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
                  'assets/images/carousal1.jpg',
                ),
                ExactAssetImage('assets/images/carousal2.jpg'),
                ExactAssetImage('assets/images/carousal3.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
      Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: primaryColor),
              child: Center(
                  child: Text(
                'For Sale',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hilton House',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'New York, USA   ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SvgPicture.asset(
                  'assets/icons/squareft.svg',
                  color: Colors.white,
                ),
                Text(
                  '  750 (Sq Fts)',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.32,
        left: MediaQuery.of(context).size.width - 50,
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            child: Icon(
              Icons.favorite,
              color: primaryColor,
            ),
            backgroundColor: Colors.grey[100],
          ),
        ),
      )
    ],
  );
}

Container firstCompOfDetails(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.13,
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRY 1000.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Smartwatch',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Center(
                child: Icon(
                  Icons.favorite_rounded,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'D18 Smartwatch Heart Rate',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    ),
  );
}

Container firstproductDetails(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.13,
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zekeriyakinide Well Postioned',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 40,
                    color: primaryColor,
                    child: Center(
                      child: Text(
                        "BUY",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 60,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        "FEATURE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Location',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'istanbul/Biskes',
              style: TextStyle(color: primaryColor, fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  );
}

Container secondComponentOfDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 8.0),
    height: MediaQuery.of(context).size.height * 0.25,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PRODUCT DESCRIPTION',
          style: kh1,
        ),
        Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,'),
        SizedBox(
          height: 10,
        ),
        Divider()
      ],
    ),
  );
}

Container overProductOfDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.height * 0.19,
    child: Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Overveiw',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  child: Row(
                    children: [
                      Text('Property ID',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(
                        'BQ-18977',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('Commericial',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text('Property Type',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text('200ml',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text('Area',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text('2016',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text('Year',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ],
                  ),
                )
//
//
//
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider()
          ],
        ),
      ),
    ),
  );
}

Container overtabbar(BuildContext context) {
  return Container(
    // padding: EdgeInsets.all(10),
    child: Container(
      // padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: const EdgeInsets.all(8.0),

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height ,
            child: ContainedTabBarView(
              tabs: [
                Text('itan Bilgiller'),
                Text('Aciklama'),
                Text('Aciklama'),
              ],
              tabBarProperties: TabBarProperties(
                 
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 8.0,
                ),
                indicator: ContainerTabIndicator(
                  width: 100,
                  radius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  color: primaryColor,
                  borderWidth: 2.0,
                  borderColor: primaryColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey[400],
              ),
              views: [
                Container(
                  child: Column(
                    children: [
                      secondProductOfDetails(context),
              // thirdComponentOfPhotos(context),
              // fourthComponent(context),
              // fifthComponent(context),
              // sixthComponent(context),

                    ],
                  ),
                ),
             Container(
                  child: Column(
                    children: [
                      secondProductOfDetails(context),
              // thirdComponentOfPhotos(context),
              fourthComponent(context),
              // fifthComponent(context),
              // sixthComponent(context),

                    ],
                  ),
                ),
                Container(child:  Mapscreen(),)
              ],
              onChange: (index) => print(index),
            ),
          ),
        ],
      ),
    ),
  );
}

//
Container secondProductOfDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
  height: MediaQuery.of(context).size.height * 0.4,
    child: Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("Fiyat") ,),
               Container(child:Text("235,000 TL" ,
               style: TextStyle(
                 color: Colors.green
               ),
               ) ,)
             ],
           ),
           Divider(), 
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("lian Tarihi") ,),
               Container(child:Text("15.01.2022" ,
               style: TextStyle(
                 color: Colors.black
               ),
               ) ,)
             ],
           ),
        Divider(), 
         
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("lian NO") ,),
               Container(child:Text("99107181" ,
               style: TextStyle(
                 color: Colors.brown
               ),
               ) ,)
             ],
           ),
          
          Divider(), 
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("lian Tipi") ,),
               Container(child:Text("Satilik Daire" ,
               style: TextStyle(
                
               ),
               ) ,)
             ],
           ),
           Divider(), 
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("m (Brutr)") ,),
               Container(child:Text("64" ,
               style: TextStyle(
                 
               ),
               ) ,)
             ],
           ),
         Divider(), 
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("m (Net)") ,),
               Container(child:Text("58" ,
               style: TextStyle(
                 
               ),
               ) ,)
             ],
           ),
           Divider(), 
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("Oda Sayisi") ,),
               Container(child:Text("1+1" ,
               style: TextStyle(
                 
               ),
               ) ,)
             ],
           ),
          Divider(), 
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(child:Text("Bina Yasi") ,),
               Container(child:Text("0" ,
               style: TextStyle(
               
               ),
               ) ,)
             ],
           ),

 Divider(), 



          ],
        ),
      ),
    ),
  );
}

// Container thirdComponentOfPhotos(BuildContext context) {
//   return Container(
//     height: MediaQuery.of(context).size.height * 0.28,

//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Text(
//         //     'Photos',
//         //     style: kh1,
//         //   ),
//         // ),
//         // Container(
//         //   height: 100,
//         //   child: listForThirdComp(),
//         // ),
//         SizedBox(
//           height: 20,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Divider(),
//         )
//       ],
//     ),
//   );
// }

Container fourthComponent(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    height: MediaQuery.of(context).size.height * 0.25,
    child: Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Features',
              style: kh1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/check.svg',
                  height: 20,
                  color: primaryColor,
                ),
                Text(
                  'Air Conditioning ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/check.svg',
                  height: 20,
                  color: primaryColor,
                ),
                Text(
                  'Barbeque',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/check.svg',
                  height: 20,
                  color: primaryColor,
                ),
                Text(
                  'Dryer',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/check.svg',
                  height: 20,
                  color: primaryColor,
                ),
                Text(
                  'Gym',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider()
          ],
        ),
      ),
    ),
  );
}

Container fifthComponent(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    height: MediaQuery.of(context).size.height * 0.40,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: kh1,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red,
          ),
          // child: LocationForHouseDetails(),
        ),
        SizedBox(
          height: 10,
        ),
        Divider()
      ],
    ),
  );
}

Container sixthComponent(BuildContext context) {
  return Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(10),
    child: Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Contact Information",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your Name ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                hintText: 'Agentf',
                                border: const OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                              )),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                hintText: 'AgentL',
                                border: const OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                              )),
                            ),

                            //
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextFormField(
                        decoration: const InputDecoration(
                      hintText: 'agent123@vistech.com',
                      border: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone Number ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextFormField(
                        decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      border: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Message ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: TextFormField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GFButton(
              borderShape: ShapeBorder.lerp(
                  RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xffd8b476), width: 2),
                      borderRadius: new BorderRadius.circular(10.0)),
                  RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xffd8b476), width: 2),
                      borderRadius: new BorderRadius.circular(10.0)),
                  0.5),
              size: 50,
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              color: primaryColor,
              onPressed: () {},
              text: "SUBMIT NOW ",
              fullWidthButton: true,
            ),
          ],
        ),
      ),
    ),
  );
}
