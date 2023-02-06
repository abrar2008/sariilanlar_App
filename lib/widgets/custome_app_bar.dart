import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/Favorite_screen.dart';
import 'package:sariilanlar/Screens/map_screen.dart';
import 'package:sariilanlar/Screens/notification_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? abtitle;
  final String? abCtitle;
  final int imageno;
  final Color? bgcolor;
  bool showPreferedSize;
  double? apbarheight;
  final Function()? onTap;
  bool actionicon;
  @override
  CustomAppBar(
      {this.abtitle,
      this.bgcolor,
      this.abCtitle,
      this.imageno = 0,
      this.onTap,
      this.showPreferedSize = false,
      this.actionicon = true,
      this.apbarheight = 36.0});

  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return showPreferedSize
        ? SafeArea(
            child: PreferredSize(
              preferredSize: preferredSize,
              child: AppBar(
                titleSpacing: 0,
                backgroundColor: bgcolor,
                elevation: 0,
                title: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      //margin: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                        child: SvgPicture.asset(
                          "$iconpath/pointer.svg",
                        ),
                      ),
                    ),
                    Text(
                      abtitle!,
                      style: const TextStyle(color: Colors.black,
                      fontSize: 15
                      ),
                    ),
                  ],
                ),
                // flexibleSpace: SizedBox(

                //   child: Column(
                //     //  crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       // SizedBox(height: sizeheight(context) * 0.06),

                //       //
                //       // SizedBox(height: 10.0),
                //     ],
                //   ),
                // ),

                //
                // leading: GestureDetector(
                //   onTap: () {}, //() => /Scaffold.of(context).openDrawer(),
                //   child: Container(
                //     margin: const EdgeInsets.all(8.0),
                //     child: Padding(
                //       padding: const EdgeInsets.all(0.0),
                //       child: SvgPicture.asset(
                //         "$iconpath/menu_icon.svg",
                //       ),
                //     ),
                //   ),
                // ),
                actions: [
                  InkWell(
                    onTap: (){
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                             Mapscreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        
                        child: SvgPicture.asset(
                          "$iconpath/location.svg",
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                             FavoriteScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        
                        child: SvgPicture.asset(
                          "$iconpath/star.svg",
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext contexr) =>
                                  NotificationScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        
                        child: SvgPicture.asset(
                          "$iconpath/notification.svg",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : AppBar(
            backgroundColor: primaryColor,
            // Colors.white,
            // elevation: 2.5,
            elevation: 0,
            titleSpacing: 0,
            title: Text(
              abtitle!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
            ),

            actions: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                             FavoriteScreen()));
                  
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Container(
                    height: 25,
                    width: 25,
                    child: SvgPicture.asset(
                      "$iconpath/star.svg",
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                              NotificationScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 25,
                    width: 25,
                    margin: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "$iconpath/notification.svg",
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
