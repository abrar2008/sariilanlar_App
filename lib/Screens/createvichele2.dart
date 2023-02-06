import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';
import 'package:sariilanlar/Screens/selectimage.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/custom_button.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
import 'package:sariilanlar/widgets/custome_dropdown_button.dart';


class CreateVichele extends StatefulWidget {
  const CreateVichele({Key? key}) : super(key: key);

  @override
  _CreateVicheleState createState() => _CreateVicheleState();
}

class _CreateVicheleState extends State<CreateVichele> {
  @override
  Widget build(BuildContext context) {

    String? dropdownValue;
    return Scaffold(
      appBar: CustomAppBar(
        abtitle: "Vehicle Details",
        bgcolor: primaryColor,
        showPreferedSize: false,
        onTap: () {},
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
             SizedBox(height: 50,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Categories",
                      textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(20),
                    child: DropdownButtonHideUnderline(
                      child: GFDropdown(
                        hint: Text('Vehicle'),
                        padding: const EdgeInsets.all(15),
                        borderRadius: BorderRadius.circular(5),
                        border: const BorderSide(
                            color: Colors.black12, width: 1),
                        dropdownButtonColor: Colors.white,
                        value: dropdownValue,
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue as String?;
                          });
                        },
                        items: [
                          'Vehicle',
                          'Vehicle',
                          'Vehicle',

                        ]
                            .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                            .toList(),
                      ),
                    ),
                  ),
                  // CustomeDropDownButton(label: "he",value: "saa",itemList: ["asda","sa","asda"],),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Condition",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(20),
                    child: DropdownButtonHideUnderline(
                      child: GFDropdown(
                        hint: Text('Used (Normal Condition)'),
                        padding: const EdgeInsets.all(15),
                        borderRadius: BorderRadius.circular(5),
                        border: const BorderSide(
                            color: Colors.black12, width: 1),
                        dropdownButtonColor: Colors.white,
                        value: dropdownValue,
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue as String?;
                          });
                        },
                        items: [
                          'Vehicle',
                          'Vehicle',
                          'Vehicle',

                        ]
                            .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                            .toList(),
                      ),
                    ),
                  ),
                  // CustomeDropDownButton(label: "he",value: "saa",itemList: ["asda","sa","asda"],),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Discription",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(20),
                    child: DropdownButtonHideUnderline(
                      child: GFDropdown(
                        hint: Text('Best Nissan  Car'),
                        padding: const EdgeInsets.all(15),
                        borderRadius: BorderRadius.circular(5),
                        border: const BorderSide(
                            color: Colors.black12, width: 1),
                        dropdownButtonColor: Colors.white,
                        value: dropdownValue,
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue as String?;
                          });
                        },
                        items: [
                          'Vehicle',
                          'Vehicle',
                          'Vehicle',

                        ]
                            .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                            .toList(),
                      ),
                    ),
                  ),
                  // CustomeDropDownButton(label: "he",value: "saa",itemList: ["asda","sa","asda"],),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                title: 'NEXT',
                callback: () {



                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
