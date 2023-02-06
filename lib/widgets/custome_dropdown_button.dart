import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/constants.dart';

class CustomeDropDownButton extends StatelessWidget {
  final String label;
  final String value;
  final List<dynamic>? itemList;
  final Function(String?)? onChanged;

  const CustomeDropDownButton(
      {Key? key,
      this.label = "",
      this.value = "",
      this.onChanged,
      this.itemList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: sizeWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3.0,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value,
                  iconSize: 32,
                  //isExpanded: true,
                  onChanged:
                      onChanged, // (value) => setState(() => this.value = value),
                  items: List.generate(itemList!.length,
                      (index) => buildMenuItem(itemList?[index])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            item,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ),
      );
}
