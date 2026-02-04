import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.colors, this.onTap});
  Color? colors;
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        color: colors,
        height: 50,
        width: double.infinity,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
