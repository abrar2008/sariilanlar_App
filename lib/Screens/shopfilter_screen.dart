

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/shopresult_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';

class Shopfilterscreen extends StatelessWidget {
  const Shopfilterscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var electron=false;
    return Scaffold(
        appBar: CustomAppBar(
          abtitle: "What Are You Offering?",
          bgcolor: primaryColor,
          // apbarheight: 180,
          showPreferedSize: false,
          onTap: () {
            //  Navigator.pop(context);
          },
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          width: sizeheight(context),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shopresultscreen()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                              child: Center(
                                child: SvgPicture.asset(
                                  "$iconpath/computer.svg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Computer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shopresultscreen()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                              child: Center(
                                child: SvgPicture.asset(
                                  "$iconpath/mobiles.svg",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mobiles",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                 
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shopresultscreen()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: new BoxDecoration(
                                  color:  Colors.grey.shade200 ,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                              height: 80,
                              width: 80,
                              child: Center(
                                child: SvgPicture.asset(
                                  "$iconpath/laptops.svg",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Electronices",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                    //
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shopresultscreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                              child: Center(
                                child: SvgPicture.asset(
                                  "$iconpath/toys.svg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Hobby &\n   Toys",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shopresultscreen()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "$iconpath/animals.svg",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Animals",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        
                        onTap: () {
                         
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shopresultscreen()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                height: 80,
                                width: 80,
                                decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "$iconpath/furnitures.svg",
                                    height: 90,
                                    width: 90,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Furnitures",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                      //
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shopresultscreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    // smainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                              child: Center(
                                child: SvgPicture.asset(
                                  "$iconpath/fashions.svg",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Fashion &\n Beauty",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shopresultscreen()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: new BoxDecoration(
                                  color:   Colors.grey.shade200,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(40.0),
                                    topRight: const Radius.circular(40.0),
                                    bottomLeft: const Radius.circular(40.0),
                                    bottomRight: const Radius.circular(40.0),
                                  )),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "$iconpath/bikes.svg",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Bikes",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),

                      //
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
