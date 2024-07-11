import 'package:flutter/material.dart';
import 'package:myapp/provider/cal_provider.dart';

import 'package:myapp/screens/home_screen.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen()),
    );
  }
}
