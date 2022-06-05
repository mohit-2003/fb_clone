import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLyt;
  final Widget? tabletLyt;
  final Widget desktopLyt;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileLyt,
      this.tabletLyt,
      required this.desktopLyt})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 800;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktopLyt;
        } else if (constraints.maxWidth >= 800) {
          return tabletLyt ?? mobileLyt;
        }
        return mobileLyt;
      },
    );
  }
}
