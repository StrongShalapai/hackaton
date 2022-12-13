// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          label: Text(labelText),
          focusColor: Colors.blueGrey,
          hoverColor: Colors.blueGrey,
          // fillColor: Colors.blueGrey,
          // hintText: 'Hint',
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.blueGrey, width: 3.0),
          // ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
