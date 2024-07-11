import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:myapp/constant/colors.dart';
import 'package:myapp/provider/cal_provider.dart';
import 'package:myapp/widget/Widgets_data.dart';

import 'package:myapp/widget/cal.dart';

import 'package:myapp/widget/textfield.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheigth = MediaQuery.sizeOf(context).height;
    final Padding = EdgeInsets.symmetric(horizontal: 25, vertical: 20);
    final decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return Consumer<CalculatorProvider>(builder: (context, Provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calculator App",
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Column(
          children: [
            customwidget(controller: Provider.compController),
            Container(
              height: screenheigth * 0.6,
              width: double.infinity,
              padding: Padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index + 12]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // Suggested code may be subject to a license. Learn more: ~LicenseLog:3451801796.
                              children: List.generate(
                                  3, (index) => buttonList[index + 16]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CalculateButton()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
