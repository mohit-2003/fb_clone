import 'package:fb_clone/models/user.dart';
import 'package:fb_clone/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {},
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          new ProfileAvatar(imageUrl: user.imageUrl),
          new SizedBox(width: 6),
          new Text(
            user.name,
            style: new TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
