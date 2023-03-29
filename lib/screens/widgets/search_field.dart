import 'package:flutter/material.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
    required this.hinttext,
    this.leadingicon,
    this.actionIcon,
  });
  final String hinttext;
  final IconData? leadingicon;
  final IconData? actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            hintText: hinttext,
            border: InputBorder.none,
            suffixIcon: Icon(actionIcon),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(leadingicon),
            )),
      ),
    );
  }
}
