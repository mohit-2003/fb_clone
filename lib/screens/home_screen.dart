import 'package:fb_clone/data.dart';
import 'package:fb_clone/models/post.dart';
import 'package:fb_clone/utils/colors.dart';
import 'package:fb_clone/widgets/create_post_widget.dart';
import 'package:fb_clone/widgets/post_card.dart';
import 'package:fb_clone/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/room.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: [
          new SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            title: new Text(
              "facebook",
              style: new TextStyle(
                  color: fbBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            actions: [
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
                    ),
                    color: Colors.black,
                    iconSize: 30),
              )
            ],
          ),
          new SliverToBoxAdapter(
              child: new CreatePostContainer(currentUser: currentUser)),
          new SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: new SliverToBoxAdapter(
              child: new Rooms(onlineUsersList: onlineUsers),
            ),
          ),
          new SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: new SliverToBoxAdapter(
              child:
                  new Stories(storiesList: stories, currentUser: currentUser),
            ),
          ),
          new SliverList(
              delegate: new SliverChildBuilderDelegate(
            childCount: posts.length,
            (context, index) {
              final Post post = posts[index];
              return new PostCard(post: post);
            },
          ))
        ],
      ),
    );
  }
}
