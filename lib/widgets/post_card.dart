import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone/models/post.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/profile_avatar.dart';
import 'package:fb_clone/widgets/responsive_lyt.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ResponsiveLayout.isDesktop(context);
    return new Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))
          : null,
      child: new Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Column(
          children: [
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new _PostHeader(post: post),
                  new SizedBox(
                    height: 4,
                  ),
                  new Text(post.caption),
                  post.imageUrl != null
                      ? new SizedBox(
                          height: 8,
                        )
                      : new SizedBox(
                          height: 6,
                        )
                ],
              ),
            ),
            post.imageUrl != null
                ? new CachedNetworkImage(imageUrl: post.imageUrl!)
                : new SizedBox.shrink(),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: new _PostStat(post: post),
            )
          ],
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        new ProfileAvatar(imageUrl: post.user.imageUrl),
        new SizedBox(
          width: 8,
        ),
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                post.user.name,
                style: new TextStyle(fontWeight: FontWeight.w600),
              ),
              new Row(
                children: [
                  new Text(
                    "${post.timeAgo} •",
                    style: new TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  new Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  )
                ],
              )
            ],
          ),
        ),
        new IconButton(onPressed: () {}, icon: new Icon(Icons.more_horiz))
      ],
    );
  }
}

class _PostStat extends StatelessWidget {
  final Post post;
  const _PostStat({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Container(
          margin: EdgeInsets.only(top: 5),
          child: new Row(
            children: [
              new Container(
                padding: EdgeInsets.all(4),
                decoration:
                    new BoxDecoration(color: fbBlue, shape: BoxShape.circle),
                child: new Icon(
                  Icons.thumb_up,
                  size: 10,
                  color: Colors.white,
                ),
              ),
              new SizedBox(
                width: 4,
              ),
              new Expanded(
                child: new Text(
                  "${post.likes}",
                  style: new TextStyle(color: Colors.grey[600]),
                ),
              ),
              new Text(
                "${post.comments} Comments",
                style: new TextStyle(color: Colors.grey[600]),
              ),
              new SizedBox(
                width: 8,
              ),
              new Text(
                "${post.shares} Shares",
                style: new TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
        ),
        new Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new _PostButton(
              label: "Like",
              onTap: () {},
              icon: new Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey[600],
                size: 20,
              ),
            ),
            new _PostButton(
              label: "Comment",
              onTap: () {},
              icon: new Icon(
                MdiIcons.commentOutline,
                color: Colors.grey[600],
                size: 20,
              ),
            ),
            new _PostButton(
              label: "Share",
              onTap: () {},
              icon: new Icon(
                MdiIcons.shareOutline,
                color: Colors.grey[600],
                size: 25,
              ),
            )
          ],
        )
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  const _PostButton(
      {Key? key, required this.icon, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new InkWell(
          onTap: onTap(),
          child: new Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 25,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  new SizedBox(
                    width: 4,
                  ),
                  new Text(label)
                ],
              ))),
    );
  }
}
