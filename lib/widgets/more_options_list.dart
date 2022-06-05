import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/user.dart';

class MoreOptionsList extends StatelessWidget {
  final User currentUser;
  final List<List> _moreOptionsList = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, fbBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, fbBlue, 'Marketplace'],
    [Icons.ondemand_video, fbBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];
  const MoreOptionsList({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: new ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: 1 + _moreOptionsList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return new Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: new UserCard(user: currentUser),
            );
          }
          final List option = _moreOptionsList[index - 1];
          return new Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: new _Option(
                icon: option[0], color: option[1], label: option[2]),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const _Option(
      {Key? key, required this.icon, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {},
      child: new Row(
        children: [
          new Icon(
            icon,
            size: 30,
            color: color,
          ),
          new SizedBox(
            width: 6,
          ),
          new Flexible(
              child: new Text(
            label,
            style: new TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
          ))
        ],
      ),
    );
  }
}
