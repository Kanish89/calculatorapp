import 'package:flutter/material.dart';
import 'package:myapp/constant/colors.dart';

class customwidget extends StatelessWidget {
  const customwidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true,
        ),
        style: TextStyle(fontSize: 40, color: Colors.white),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
