import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(border: InputBorder.none,
            fillColor: Colors.grey[900],
            filled: true),
        style: TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),);
  }
}