import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
class SetPrice extends StatefulWidget {
  const SetPrice({Key? key}) : super(key: key);

  @override
  _SetPriceState createState() => _SetPriceState();
}

class _SetPriceState extends State<SetPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text("Put The Price "),
            ),

            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              child: Center(
                child: Text("200"),
              )
            )

          ],
        ),
      ),

    );
  }
}
