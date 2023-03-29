import 'package:flutter/material.dart';
import 'package:ui_page/helpers/textstyle.dart';

class TimeField extends StatelessWidget {
  const TimeField({
    super.key,
    this.hint,
  });
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * .3,
      padding: const EdgeInsets.only(left: 20),
      height: 45,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Tstyles.greycolor16,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
