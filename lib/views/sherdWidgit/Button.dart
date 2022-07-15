import 'package:flutter/material.dart';

Widget buttonMain(String text, VoidCallback function, BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
      child: Text(text),
      onPressed: function,
      style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
    ),
  );
}
