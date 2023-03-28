import 'package:flutter/material.dart';
import 'package:ui_page/cosntants/constants.dart';
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
    return Row(
      children: [
        Expanded(
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  dropdownColor: Colors.grey.shade200,
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                '${value['image']}',
                                color: Colors.red,
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                '${value['name']}',
                              ),
                            ],
                          ),
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
        ),
      ],
    );
  }
}
