import 'package:flutter/material.dart';
import 'package:myapp/constant/colors.dart';
import 'package:myapp/provider/cal_provider.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key,
      required this.label,
      this.textcolor = Colors.white,
      required Color textColor});

  final String label;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      },
      child: Material(
        elevation: 3,
        color: AppColors.secondary2Color,
        borderRadius: BorderRadiusDirectional.circular(60),
        child: CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.secondary2Color,
          child: Text(label,
              style: TextStyle(
                  color: textcolor, fontSize: 25, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
