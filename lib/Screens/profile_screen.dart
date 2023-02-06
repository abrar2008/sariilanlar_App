import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/editprofile_screen.dart';
import 'package:sariilanlar/Screens/pricings_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  double coverheight = 220;
  double profileheight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverheight - profileheight / 2;
    final bottom = profileheight / 2;
    return
        // Scaffold(
        //   appBar: CustomAppBar(
        //     showPreferedSize: false,
        //     abtitle: 'User Profile',
        //   ),
        //   body:
        ListView(
      padding: EdgeInsets.zero,
      children: [
        //profile
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: bottom),
              height: coverheight,
              // color: Colors.grey,
              child: Image.asset(
                '$imgpath/profilebg.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: top,
              child: CircleAvatar(
                radius: profileheight / 2,
                backgroundColor: Colors.grey.shade800,
                backgroundImage: AssetImage('$imgpath/profile.png'),
              ),
            )
          ],
        ),
        //profile end
        Column(
          children: [
            SizedBox(height: 5.0),
            Text(
              "John Smith",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              "Business man",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "$iconpath/location.svg",
                  // color: Colors.black,
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 3.0),
                Text(
                  "Mad by Turkey .",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "$iconpath/world.svg",
                  // color: Colors.black,
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 3.0),
                Text(
                  "www.sahibinden.com",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            // Divider(),
            Container(
              height: 0.5,
              width: sizeWidth(context) / 0.5,
              color: Colors.grey,
            ),
            SizedBox(height: 15.0),
            InkWell(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                             PricingsScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profileAdsBox(
                        Iconname: "$iconpath/publicads.svg", title: 'Public Ads'),
                    profileAdsBox(
                        Iconname: "$iconpath/pending ads.svg",
                        title: 'Pending Ads'),
                    profileAdsBox(
                        Iconname: "$iconpath/rejected ads.svg",
                        title: 'Rejected Ads')
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  profileAdsBox(
                    ontab: (){
                       
                    },
                      Iconname: "$iconpath/save searches.svg",
                      title: 'Save Searches'),
                      SizedBox(width: 3,),
                  profileAdsBox(
                     ontab: (){
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                             PricingsScreen()));
                    },
                      Iconname: "$iconpath/favorites.svg",
                      title: 'Favourite Posts'), SizedBox(width: 3,),
                  profileAdsBox(
                      Iconname: "$iconpath/advertise.svg", title: 'Advertise'),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Container(
                width: sizeWidth(context),
                // margin:
                //     EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
                height: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: ElevatedButton(
                  child: const Text(
                    'EDIT PROFILE',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext contexr) =>
                  
                                const EditProfile()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    textStyle: const TextStyle(
                      fontSize: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      //),
    );
  }

  Widget profileAdsBox({required String Iconname, required String title, GestureTapCallback? ontab}) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              ontab;
            },
            child: SvgPicture.asset(
              Iconname,
              //"$iconpath/advertise.svg",
              color: Colors.black,
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(height: 3.0),
          Text(
            //"Advertise",
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
