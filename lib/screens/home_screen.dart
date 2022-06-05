import 'package:fb_clone/screens/home_screen_desktop.dart';
import 'package:fb_clone/screens/home_screen_mobile.dart';
import 'package:fb_clone/widgets/responsive_lyt.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      new TrackingScrollController();
  @override
  void dispose() {
    super.dispose();
    _trackingScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ResponsiveLayout(
        mobileLyt:
            new HomeScreenMobile(scrollController: _trackingScrollController),
        desktopLyt:
            new HomeScreenDesktop(scrollController: _trackingScrollController),
      ),
    );
  }
}
