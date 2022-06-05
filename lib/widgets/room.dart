import 'package:fb_clone/models/user.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/profile_avatar.dart';
import 'package:fb_clone/widgets/responsive_lyt.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsersList;
  const Rooms({Key? key, required this.onlineUsersList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ResponsiveLayout.isDesktop(context);
    return new Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))
          : null,
      child: new Container(
        color: Colors.white,
        height: 60,
        child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
          itemCount: 1 + onlineUsersList.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return new OutlinedButton(
                  style: new ButtonStyle(
                    shape: MaterialStateProperty.all(new RoundedRectangleBorder(
                        side: new BorderSide(
                            width: 3,
                            color: Colors.blueAccent[100] ?? Colors.blueAccent),
                        borderRadius: BorderRadius.circular(30))),
                  ),
                  onPressed: () {},
                  child: new Row(
                    children: [
                      new ShaderMask(
                        shaderCallback: (bounds) =>
                            createRoomGradient.createShader(bounds),
                        child: new Icon(
                          Icons.video_call,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      new SizedBox(
                        width: 4.0,
                      ),
                      new Text("Create\nRoom")
                    ],
                  ));
            }
            User user = onlineUsersList[index - 1];
            return new Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isOnline: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
