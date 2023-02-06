
import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class CustumeDialogBox extends StatefulWidget {
  final String imagepath;
  final String textType;
  CustumeDialogBox({Key? key, this.imagepath = "", this.textType = "BUY"})
      : super(key: key);

  @override
  State<CustumeDialogBox> createState() => _CustumeDialogBoxState();
}

class _CustumeDialogBoxState extends State<CustumeDialogBox> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        //AlertDialog(
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: Container(
            width: sizeWidth(context) * 0.9,
            // margin:
            //     EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.darken),
                          fit: BoxFit.cover,
                          image: AssetImage(
                            //'assets/images/city1.jpg',
                            widget.imagepath,
                            //houseImg[index - 1]
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(5.0),
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xff7498d3),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "FEATURED",
                                    // widget.btntext,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade600,
                                      borderRadius: BorderRadius.circular(1.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        //'BUY',
                                        widget.textType,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade600,
                                      borderRadius: BorderRadius.circular(1.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "HOT OFFER",
                                        // widget.btntext,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("QR4,475,300",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                CircleAvatar(
                                  maxRadius: 10,
                                  backgroundColor: Colors.transparent,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                    child: CircleAvatar(
                                      maxRadius: 10,
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Modern Apartment With Balcony',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "address",
                        // widget.address,
                        style: TextStyle(color: primaryColor, fontSize: 12),
                        // overflow: TextOverflow.ellipsis,
                        // maxLines: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/icons/bed.jpg'
                                            //houseImg[index - 1]
                                            )),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/icons/bathtap.png'
                                            //houseImg[index - 1]
                                            )),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/icons/car.png'
                                            //houseImg[index - 1]
                                            )),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/icons/triangle.png'
                                            //houseImg[index - 1]
                                            )),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '2,16 Sq m',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TYPE: COMMERCIAL',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Many Flats available with different view and big balconies including all bills with access to the beach',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'The Tower Include all facilities:',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 10.0),
                        AcceptanceOfTerms(text: 'Including All Utilities'),
                        SizedBox(height: 10.0),
                        AcceptanceOfTerms(
                            text: 'Including internet and TV cable'),
                        SizedBox(height: 10.0),
                        AcceptanceOfTerms(text: 'Including Maintenance'),
                        SizedBox(height: 10.0),
                        AcceptanceOfTerms(text: 'Incredible west bay views'),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            width: sizeWidth(context) * 0.4,
                            // margin: EdgeInsets.symmetric(
                            //     horizontal: sizeWidth(context) * 0.06),
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: ElevatedButton(
                              child: Text(
                                'MORE DETAILS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget AcceptanceOfTerms({String? text}) {
    return Row(
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: primaryColor,
            //borderRadius: BorderRadius.circular(5.0),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          text!,
          //"Lorem ipsum dolor sit amet, ",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
