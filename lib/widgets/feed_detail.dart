import 'package:flutter/material.dart';
import 'package:social_ui/social_ui.dart';

class FeedDetail extends StatelessWidget {
  const FeedDetail({
    Key? key,
    required this.userAvatar,
    required this.username,
    required this.userSubtitle,
    required this.feedBody,
    this.imageUrls = const <String>[],
    this.likeCount = 0,
    this.commentCount = 0,
    this.onLikeCallback,
  }) : super(key: key);

  final String userAvatar;
  final String username;
  final String userSubtitle;

  final String feedBody;
  final List<String> imageUrls;

  final int likeCount;
  final int commentCount;

  final VoidCallback? onLikeCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserHeader(
              url: userAvatar, username: username, subtitle: userSubtitle),
          SizedBox(height: 16),
          for (var i = 0; i < imageUrls.length; i++) Container(),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              feedBody,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
