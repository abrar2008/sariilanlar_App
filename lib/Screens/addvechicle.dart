import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sariilanlar/Screens/selectimage.dart';
import 'package:sariilanlar/utils/add_property_comp.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/custom_button.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/stepper.dart';
import 'package:im_stepper/stepper.dart';

import 'createvichele2.dart';

class AddVechicle extends StatefulWidget {
  const AddVechicle({Key? key}) : super(key: key);

  @override
  _AddVechicleState createState() => _AddVechicleState();
}

class _AddVechicleState extends State<AddVechicle> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        abtitle: "Add Vehicle",
        bgcolor: primaryColor,
        showPreferedSize: false,
        onTap: () {},
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            //
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: SvgPicture.asset(
                                'assets/icons/camera.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "TAKE PHOTO",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SelectImage()),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/icons/pictures.svg',
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "SELECT PHOTO",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 60,
            ),
            _titleAndDescription(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                title: 'NEXT',
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateVichele()),
                  );


                },
              ),
            ),
            DotStepper(




              // direction: Axis.vertical,
              dotCount: dotCount,
              dotRadius: 25,

              /// THIS MUST BE SET. SEE HOW IT IS CHANGED IN NEXT/PREVIOUS BUTTONS AND JUMP BUTTONS.
              activeStep: activeStep,
              shape: Shape.stadium,
              spacing: 20,

              indicator: Indicator.shift,

              /// TAPPING WILL NOT FUNCTION PROPERLY WITHOUT THIS PIECE OF CODE.
              onDotTapped: (tappedDotIndex) {
                setState(() {
                  activeStep = tappedDotIndex;
                });
              },

              // DOT-STEPPER DECORATIONS
              fixedDotDecoration: FixedDotDecoration(

                strokeWidth: 10,
                color: Colors.black,


              ),

              indicatorDecoration: IndicatorDecoration(
                // style: PaintingStyle.stroke,
                // strokeWidth: 8,
                color: primaryColor,
              ),
              lineConnectorDecoration: LineConnectorDecoration(

                color: primaryColor,

              ),
            ),


          ],
        ),
      ),
    );
  }
}

_titleAndDescription() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Tittle",
            textAlign: TextAlign.start,
            style: TextStyle(),
          ),
        ),
        addPropertyTextField('Image'),
      ],
    ),
  );
}
