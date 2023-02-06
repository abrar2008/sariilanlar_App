import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';

class RealList extends StatelessWidget {
  final int index;
  final String address;
  final String imagepath;

  const RealList({
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
      child: SingleChildScrollView(
        child: Container(
          width: sizeWidth(context),
          margin: EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 10.0),
          height: 95,
      
          decoration: BoxDecoration(
              color: index == 1 || index == 4 || index == 5
                  ? primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(10.0)
              ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.123,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            // bottomRight: Radius.circular(10.0),
                            // topRight: Radius.circular(10.0)
                            
                            ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              // 'assets/images/city3.jpg',
                              imagepath,
                              //houseImg[index - 1]
                            ))),
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '7,500.000 Tl',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        // SizedBox(
                        //   height: 2.0,
                        // ),
                        SizedBox(
                          // color: Colors.red,
      
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            "Villa For Sale",
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
                          width: MediaQuery.of(context).size.width* 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2020',
                                style: TextStyle(
                                    color:Colors.black54,
                                        fontWeight: FontWeight.w700,
                                    fontSize: 10),
                              ),
                                 Text(
                                'Room :2+1',
                                style: TextStyle(
                                    color:Colors.black54,
                                        fontWeight: FontWeight.w700,
                                    fontSize: 10),
                              ),
                                 Text(
                                'Area:200 ml',
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
                          'Antalya',
                          style: TextStyle(
                              color:
                                  Colors.black45,
                                
                                  fontWeight: FontWeight.w700,
                              fontSize: 10),
                        ),
                        // SizedBox(
                        //   height: 2.0,
                        // ),
                      
                        SizedBox(
                          height: 2.0,
                        ),
                        Container(
                          
                          width: MediaQuery.of(context).size.width* 0.55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          

                            children: [
                              Text(
                                'COLDWELL BANKER',
                                style: TextStyle(
                                    color: index == 1 || index == 4 || index == 5
                                        ? Colors.black
                                        : Colors.grey,
                                        fontWeight: FontWeight.w700,
                                    fontSize: 10),
                              ),
                             
                              Container(child: Icon(Icons.favorite_border))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
         
            ],
          ),
        ),
      ),
    );
  }
}
