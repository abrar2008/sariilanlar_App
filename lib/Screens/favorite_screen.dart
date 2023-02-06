import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/realblog_list.dart';
import 'package:sariilanlar/widgets/shoplistresult.dart';
import 'package:sariilanlar/widgets/vehiclelistresult.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: CustomAppBar(
            abtitle: "Favorites",
            bgcolor: primaryColor,
            // apbarheight: 180,
            showPreferedSize: false,
            onTap: () {
              //  Navigator.pop(context);
            },
          ),


           body: Container(
             child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: RealLImgList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Shopresultlist(
                        index: index,
                        address: "heloodfksaf dsfsahf",
                        imagepath: productImgList[index],
                      );
                    },
                  ),
                ),
              ),
           
             ),
           );
           
   
  }
}