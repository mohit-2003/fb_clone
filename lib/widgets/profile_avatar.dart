import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final bool hasBorder;
  const ProfileAvatar(
      {Key? key,
      required this.imageUrl,
      this.isOnline = false,
      this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Stack(children: [
      new CircleAvatar(
        radius: 20,
        backgroundColor: fbBlue,
        child: new CircleAvatar(
          radius: hasBorder ? 17 : 20,
          backgroundColor: Colors.grey[200],
          backgroundImage: new CachedNetworkImageProvider(imageUrl),
        ),
      ),
      isOnline
          ? new Positioned(
              bottom: 0,
              right: 0,
              child: new Container(
                height: 15,
                width: 15,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: online,
                    border: Border.all(color: Colors.white, width: 2.0)),
              ))
          : new SizedBox.shrink()
    ]);
  }
}
