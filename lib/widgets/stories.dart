import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone/models/story.dart';
import 'package:fb_clone/models/user.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final List<Story> storiesList;
  final User currentUser;
  const Stories(
      {Key? key, required this.storiesList, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200,
      color: Colors.white,
      child: new ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + storiesList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return new Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: new _StoryCard(currentUser: currentUser),
            );
          }
          Story story = storiesList[index - 1];
          return new Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: new _StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final User? currentUser;
  final Story? story;
  const _StoryCard({Key? key, this.currentUser, this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        new ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: new CachedNetworkImage(
              imageUrl: story == null ? currentUser!.imageUrl : story!.imageUrl,
              height: double.infinity,
              width: 110,
              fit: BoxFit.fill),
        ),
        new Container(
          height: double.infinity,
          width: 110,
          decoration: new BoxDecoration(
              gradient: storyGradient, borderRadius: BorderRadius.circular(12)),
        ),
        new Positioned(
            left: 8,
            top: 8,
            child: story == null
                ? new Container(
                    height: 40,
                    width: 40,
                    decoration: new BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: new IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        iconSize: 30,
                        icon: new Icon(
                          Icons.add,
                          color: fbBlue,
                        )),
                  )
                : new ProfileAvatar(
                    imageUrl: story!.imageUrl,
                    hasBorder: !story!.isViewed,
                  )),
        new Positioned(
            left: 8,
            right: 8,
            bottom: 8,
            child: new Text(
              story == null ? "Add to Story" : story!.user.name,
              style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ))
      ],
    );
  }
}
