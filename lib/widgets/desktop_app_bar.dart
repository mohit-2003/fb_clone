import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/custom_bottom_nav_bar.dart';
import 'package:fb_clone/widgets/user_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/user.dart';

class DesktopAppBar extends StatelessWidget {
  final List<IconData> icons;
  final User currentUser;
  final int selectedIndex;
  final Function(int) onTap;
  const DesktopAppBar(
      {Key? key,
      required this.icons,
      required this.currentUser,
      required this.selectedIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: new BoxDecoration(color: Colors.white, boxShadow: [
        new BoxShadow(
            color: Colors.black12, offset: new Offset(0, 2), blurRadius: 4)
      ]),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new Expanded(
            child: new Text(
              "facebook",
              style: new TextStyle(
                  color: fbBlue,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
          ),
          new SizedBox(
            height: double.infinity,
            width: 600,
            child: new CustomBottomNavBar(
                isBottomIndicator: true,
                icons: icons,
                selectedScreen: selectedIndex,
                onTap: onTap),
          ),
          new Expanded(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new UserCard(user: currentUser),
                new SizedBox(
                  width: 12,
                ),
                new Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: new BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.circle),
                  child: new IconButton(
                      onPressed: () {},
                      icon: new Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      iconSize: 30),
                ),
                new Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: new BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.circle),
                  child: new IconButton(
                      onPressed: () {},
                      icon: new Icon(
                        MdiIcons.facebookMessenger,
                        color: Colors.black,
                      ),
                      iconSize: 30),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
