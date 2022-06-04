import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone/models/user.dart';
import 'package:fb_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 0),
      child: new Column(
        children: [
          new Row(children: [
            new ProfileAvatar(imageUrl: currentUser.imageUrl),
            new SizedBox(
              width: 8,
            ),
            new Expanded(
              child: new TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: "What/'s on your mind"),
              ),
            )
          ]),
          new Divider(
            height: 10,
            thickness: 0.5,
          ),
          new SizedBox(
            height: 40,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: new Icon(Icons.videocam, color: Colors.red),
                    label: new Text(
                      "Live",
                      style: new TextStyle(color: Colors.black),
                    )),
                new VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: new Icon(Icons.photo_library, color: Colors.green),
                    label: new Text(
                      "Photo",
                      style: new TextStyle(color: Colors.black),
                    )),
                new VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon:
                        new Icon(Icons.video_call, color: Colors.purpleAccent),
                    label: new Text(
                      "Room",
                      style: new TextStyle(color: Colors.black),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
