import 'package:flutter/material.dart';
import 'package:ui_page/cosntants/constants.dart';
import 'package:ui_page/helpers/size/size.dart';
import 'package:ui_page/helpers/textstyle.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
              borderRadius: BorderRadius.circular(10),
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              dropdownColor: Colors.grey.shade300,
              value: dropDownValue,
              hint: dropDownValue == null
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Select Your car'),
                    )
                  : Text(
                      dropDownValue!,
                      style: Tstyles.greycolor16,
                    ),
              iconSize: 30.0,
              items: jsona.map(
                (value) {
                  return DropdownMenuItem<String?>(
                    value: value.toString(),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('${value['image']}'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.contain,
                          color: Colors.red,
                        ),
                        Ksize.kWsize20,
                        Text(
                          '${value['name']}',
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
              onChanged: (val) {
                setState(
                  () {
                    dropDownValue = val;
                  },
                );
              }),
        ),
      ),
    );
  }
}
