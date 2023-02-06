import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class VehiclelistList extends StatelessWidget {
  final int index;
  final String address;
  final String imagepath;

  const VehiclelistList({
    Key? key,
    this.index = 0,
    this.address = "",
    this.imagepath = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, 'HouseDetails');
      },
      child: Container(
        width: sizeWidth(context),
        // margin: EdgeInsets.symmetric(
        //     horizontal: 10.0, vertical: 10.0),
        height: 95,

        decoration: BoxDecoration(
            color: index == 1 || index == 4 || index == 5
                ? primaryColor
                : Colors.white,
            // borderRadius: BorderRadius.circular(10.0)
            ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              // 'assets/images/city3.jpg',
                              imagepath,
                              //houseImg[index - 1]
                            ))),
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TRY 887,900',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      // SizedBox(
                      //   height: 2.0,
                      // ),
                      SizedBox(
                        // color: Colors.red,

                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          "Nissan  Armada",
                          style: TextStyle(
                              color: index == 1 || index == 4 || index == 5
                                  ? Colors.black
                                  : Colors.grey,
                                  fontWeight: FontWeight.w700,
                              fontSize: 12),
                          textAlign: TextAlign.start,
                          //maxLines: 5,
                        ),
                      ),
                      // SizedBox(
                      //   height: 8.0,
                      // ),
                      Container(
                        width: MediaQuery.of(context).size.width* 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Platinum 4WD 2022',
                              style: TextStyle(
                                  color:Colors.black54,
                                      fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                               
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 5.0,
                      // ),
                      Text(
                        'body type :SUV',
                        style: TextStyle(
                            color:
                                Colors.black45,
                              
                                fontWeight: FontWeight.w700,
                            fontSize: 10),
                      ),
                      // SizedBox(
                      //   height: 2.0,
                      // ),
                      Divider(
                     
                        color: Colors.black87,
                        

                      ),
                      // SizedBox(
                      //   height: 2.0,
                      // ),
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                color: index == 1 || index == 4 || index == 5
                                    ? Colors.black
                                    : Colors.grey,
                                    fontWeight: FontWeight.w700,
                                fontSize: 10),
                          ),
                          SizedBox(width: 5,),
                           Text(
                            'Istanbul / Bisiktas',
                            style: TextStyle(
                                color: index == 1 || index == 4 || index == 5
                                    ? Colors.black
                                    : primaryColor,
                                    fontWeight: FontWeight.w700,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
       
          ],
        ),
      ),
    );
  }
}
