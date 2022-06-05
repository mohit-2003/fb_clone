import 'package:fb_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedScreen;
  final Function(int) onTap;
  final bool isBottomIndicator;
  const CustomBottomNavBar(
      {Key? key,
      required this.icons,
      required this.selectedScreen,
      required this.onTap,
      this.isBottomIndicator = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new TabBar(
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                new Tab(
                  icon: new Icon(
                    e,
                    color: i == selectedScreen ? fbBlue : Colors.black45,
                    size: 30,
                  ),
                ),
              ))
          .values
          .toList(),
      indicator: new BoxDecoration(
          border: isBottomIndicator
              ? new Border(bottom: new BorderSide(color: fbBlue, width: 3))
              : new Border(top: new BorderSide(color: fbBlue, width: 3))),
      indicatorPadding: EdgeInsets.zero,
      onTap: onTap,
    );
  }
}
