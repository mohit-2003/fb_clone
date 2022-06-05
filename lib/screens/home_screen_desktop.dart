import 'package:fb_clone/data.dart';
import 'package:fb_clone/models/post.dart';
import 'package:fb_clone/widgets/contact_list.dart';
import 'package:fb_clone/widgets/create_post_widget.dart';
import 'package:fb_clone/widgets/more_options_list.dart';
import 'package:fb_clone/widgets/post_card.dart';
import 'package:fb_clone/widgets/room.dart';
import 'package:fb_clone/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;
  const HomeScreenDesktop({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        new Flexible(
            flex: 2,
            child: new Padding(
              padding: EdgeInsets.all(12),
              child: new MoreOptionsList(currentUser: currentUser),
            )),
        new Spacer(),
        new SizedBox(
          width: 600,
          child: new CustomScrollView(
            controller: scrollController,
            slivers: [
              new SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                sliver: new SliverToBoxAdapter(
                  child: new Stories(
                      storiesList: stories, currentUser: currentUser),
                ),
              ),
              new SliverToBoxAdapter(
                  child: new CreatePostContainer(currentUser: currentUser)),
              new SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                sliver: new SliverToBoxAdapter(
                  child: new Rooms(onlineUsersList: onlineUsers),
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
        ),
        new Spacer(),
        new Flexible(
            flex: 2,
            child: new Padding(
              padding: EdgeInsets.all(12),
              child: new ContactList(users: onlineUsers),
            ))
      ],
    );
  }
}
