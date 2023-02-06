// import 'package:bonyanaldoha/services/api_data.dart';
// import 'package:bonyanaldoha/utils/color_schemes.dart';
// import 'package:bonyanaldoha/utils/constants.dart';
// import 'package:bonyanaldoha/widgets/custome_dialog_box.dart';
// import 'package:bonyanaldoha/widgets/home_components.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_dialog_box.dart';
import 'package:sariilanlar/widgets/propertylist.dart';

//import '../components/location_components.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({Key? key}) : super(key: key);
  @override
  _MapscreenState createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  late BitmapDescriptor pinLocationIcon;
  final Set<Marker> _markers = {};
  static const LatLng _center = LatLng(38.9637, 35.2433);
  final LatLng _lastMapPosition = _center;

  late GoogleMapController _controller;

  @override
  void initState() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: _lastMapPosition,
          icon: BitmapDescriptor.defaultMarker));
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: LatLng(45.500000, -122.677433),
          icon: BitmapDescriptor.defaultMarker));
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: LatLng(11.6758, 92.7624),
          icon: BitmapDescriptor.defaultMarker));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                  zoomGesturesEnabled: true,
                  markers: _markers,
                  //    initialCameraPosition: _initialPosition,
                  initialCameraPosition:
                      CameraPosition(target: _center, zoom: 8.0),
                  mapType: MapType.terrain,
                  onMapCreated: (controller) {
                    setState(() {
                      _controller = controller;
                    });
                  },
                  onTap: (coordinates) => _controller
                      .animateCamera(CameraUpdate.newLatLng(coordinates))),
            ),
            // Container(
            //   height: 100,
            //   color: primaryColor,
            //   alignment: Alignment.topCenter,
            //   child: Container(
            //     width: sizeWidth(context),
            //     height: 45,
            //     margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            //  decoration: BoxDecoration(
            //           color: Colors.white,
            //           // border: BorderRadius.circular(10),
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.3),
            //               blurRadius: 2,
            //               offset: const Offset(0, 5), // Shadow position
            //             ),
            //           ],
            //         ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
            //           child: Container(
            //             child: Icon(
            //               Icons.search,
            //               color: Colors.grey,
            //               size: 24.0,
            //             ),
            //           ),
            //         ),
            //         Container(
            //           width: sizeWidth(context) * 0.79,
            //           child: TextField(
            //             //showCursor: false,
            //             decoration: InputDecoration(
            //               hintText: "Search Property",
            //               hintStyle: TextStyle(color: Colors.grey),
            //               enabledBorder: InputBorder.none,
            //               border: InputBorder.none,
            //               disabledBorder: InputBorder.none,
            //               focusedErrorBorder: InputBorder.none,
            //             ),
            //           ),
            //         ),
            //         // Container(
            //         //   height: 30,
            //         //   width: sizeWidth(context) * 0.09,
            //         //   margin: EdgeInsets.all(5.0),
            //         //   decoration: BoxDecoration(
            //         //     color: primaryColor,
            //         //     borderRadius: BorderRadius.circular(10.0),
            //         //   ),
            //         //   // child: Padding(
            //         //   //   padding: const EdgeInsets.all(8.0),
            //         //   //   child: Image.asset(
            //         //   //     'assets/icons/filtericon.png',
            //         //   //     color: Colors.white,
            //         //   //   ),
            //         //   // ),
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
           //
           
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: SizedBox(
                  height: sizeheight(context) * 0.32,
                  width:  sizeheight(context) * 0.55,
                 
                  //  width: sizeWidth(context),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: cityImg.length,
                    itemBuilder: (context, index) {
                      return PropertyList(
                        index: index,
                        btntext: "BUY",
                        address: 'The Pearl-Qatar,Doha,Qatar',
                        imagepath: cityImg[index],
                        onTapArrow: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustumeDialogBox(
                                  imagepath: cityImg[index],
                                  textType: "BUY",
                                );
                              });
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            // Container(
            //     height: 150,
            //     padding: EdgeInsets.only(bottom: 18.0),
            //     child: listOfLocations()),
            // )
          ],
        ),
      ),
    );
  }
}
