import 'package:fb_clone/screens/home_screen.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      theme: ThemeData(
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: scaffoldBackgroundColor),
      home: const HomeScreen(),
    );
  }
}
