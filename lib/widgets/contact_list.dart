import 'package:fb_clone/widgets/user_card.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class ContactList extends StatelessWidget {
  final List<User> users;
  const ContactList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: new Column(children: [
        new Row(
          children: [
            new Expanded(
                child: new Text(
              "Contacts",
              style: new TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )),
            new Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
            new SizedBox(
              width: 8,
            ),
            new Icon(
              Icons.more_horiz,
              color: Colors.grey[600],
            ),
          ],
        ),
        new Expanded(
          child: new ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: users.length,
            itemBuilder: (context, index) {
              final User user = users[index];
              return new Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: new UserCard(user: user),
              );
            },
          ),
        )
      ]),
    );
  }
}
