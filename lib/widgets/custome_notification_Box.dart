import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class NotificationBox extends StatelessWidget {
  final int index;
  // final String address;
  // final String imagepath;
  NoficationListModel ndata;

  NotificationBox(this.ndata, this.index);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, 'HouseDetails');
      },
      child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: sizeWidth(context),
              // margin: EdgeInsets.symmetric(
              //     horizontal: 10.0, vertical: 10.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.14,
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
                              ndata.image!,
                              //houseImg[index - 1]
                            ))),
                  ),
                  SizedBox(width: 6.0),
                  Container(
                   // color: Colors.red,
                     // width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ndata.name!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        SizedBox(
                          // color: Colors.red,

                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Text(
                            ndata.description!,
                            style: TextStyle(
                                color: Colors.grey,
                                // color: index == 1 || index == 4 || index == 5
                                //     ? Colors.black
                                //     : Colors.grey,
                                fontSize: 14),
                            textAlign: TextAlign.start,
                            //maxLines: 5,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          ndata.date!,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 2.0,
          ),
          SizedBox(
            height: 4.0,
          ),
        ],
      ),
    );
  }
}
