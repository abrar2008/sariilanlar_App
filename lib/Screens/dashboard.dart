import 'package:sariilanlar/Screens/addscreen.dart';
import 'package:sariilanlar/Screens/chat_screen.dart';
import 'package:sariilanlar/Screens/home_screen.dart';
import 'package:sariilanlar/Screens/homepage_screen.dart';
import 'package:sariilanlar/Screens/map_screen.dart';
import 'package:sariilanlar/Screens/notification_screen.dart';
import 'package:sariilanlar/Screens/profile_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';

enum DrawerSections {
  home,
  buy,
  rent,
  sell,
  help,
  createAListing,
  blog,
  about,
  termOfUse,
  contactUs
}

class DashBoardScreen extends StatefulWidget {
  final int currrentid;
  final String title;
  const DashBoardScreen({Key? key, this.currrentid = 0, this.title = "Home"})
      : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Widget> screenList = <Widget>[
    HomePagescreen(),
    Mapscreen(),
    AddScreen(),
    Chatscreen(),
    ProfilePage(),
  ];
  String apptitle = 'Home';

  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var currentPage = DrawerSections.home;

  dynamic container;

  void _onItemTapped(int index) {
    setState(() {
      _currentSelected = index;
      // switch (index) {
      //   case 0:
      //     {
      //       apptitle = 'Home';
      //     }
      //     break;
      //   case 1:
      //     {
      //       apptitle = 'Buy';
      //     }
      //     break;
      //   case 2:
      //     {
      //       apptitle = 'Rent';
      //     }
      //     break;
      //   case 3:
      //     {
      //       apptitle = 'Commercial';
      //     }
      //     break;
      //   case 4:
      //     {
      //       apptitle = 'Location';
      //     }
      //     break;
      // }
      //  _currentScreen
    });
  }

  @override
  void initState() {
    _currentSelected = widget.currrentid;
    apptitle = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            abtitle: "sarıilanlar.com",
            bgcolor: primaryColor,
            apbarheight: 180,
            showPreferedSize: true,
            onTap: () {},
          ),
          // drawer: CustomeDrower(
          //   drawerlist: DrawerList(),
          // ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 2.0,
              onTap: _onItemTapped,
              currentIndex: _currentSelected,
              selectedItemColor: primaryColor,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: SvgPicture.asset(
                      "$iconpath/home.svg",
                      color: /* _currentSelected == 3 ? primaryColor :  */ Colors
                          .grey,
                      height: 25,
                      width: 25,
                    ),
                    //label: ""
                    title: Padding(padding: EdgeInsets.all(0))),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "$iconpath/pointer.svg",
                      color: /* _currentSelected == 3 ? primaryColor :  */ Colors
                          .grey,
                      height: 25,
                      width: 25,
                    ),
                    //  label: "",
                    title: Padding(padding: EdgeInsets.all(0))),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          color: primaryColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      // SvgPicture.asset(
                      //   "$iconpath/plus.svg",
                      //   color: Colors.white,
                      //   / color: _currentSelected == 2 ? primaryColor : Colors.grey,
                      //   height: 28,
                      //   width: 28,
                      // ),
                    ),
                    // label: "",
                    title: Padding(padding: EdgeInsets.all(0))),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "$iconpath/chat.svg",
                      color: /* _currentSelected == 3 ? primaryColor :  */ Colors
                          .grey,
                      height: 25,
                      width: 25,
                    ),
                    // label: "",
                    title: Padding(padding: EdgeInsets.all(0))),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "$iconpath/user.svg",
                      color: /* _currentSelected == 3 ? primaryColor :  */ Colors
                          .grey,
                      height: 25,
                      width: 25,
                    ),
                    //  label: "",
                    title: Padding(padding: EdgeInsets.all(0))),
              ]),
          body: IndexedStack(
            index: _currentSelected,
            children: screenList,
          )),
    );
  }
}
