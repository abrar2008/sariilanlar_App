import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
class SelectImage extends StatefulWidget {
  const SelectImage({Key? key}) : super(key: key);

  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        abtitle: "Select Image",
        bgcolor: primaryColor,
        showPreferedSize: false,
        onTap: () {},
      ),
      body: Container(

        child:Column(
          children: [
            Container(
              child: Card(


              ),
            )
          ],
        )
      ),
    );
  }
}
