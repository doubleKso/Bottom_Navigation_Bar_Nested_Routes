import 'package:bottom_nav_bar_nested/mainwrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Banner(
        message: 'DoubleK',
        location: BannerLocation.bottomStart,
        child: MainWrapper(),
      ),
    );
  }
}
