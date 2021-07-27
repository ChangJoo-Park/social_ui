import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class UserRecommendList extends StatefulWidget {
  const UserRecommendList({
    Key? key,
    required this.userAvatarUrls,
    required this.usernames,
    this.canAdd = true,
    this.onUserTap,
    this.onAddTap,
  })  : assert(userAvatarUrls.length == usernames.length),
        super(key: key);

  final List<String> userAvatarUrls;
  final List<String> usernames;
  final bool canAdd;
  final VoidCallback? onUserTap;
  final VoidCallback? onAddTap;

  @override
  _UserRecommendListState createState() => _UserRecommendListState();
}

class _UserRecommendListState extends State<UserRecommendList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          if (widget.canAdd)
            GestureDetector(
              onTap: widget.onUserTap,
              child: Container(
                width: 60,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          for (var i = 0; i < widget.userAvatarUrls.length; i++)
            GestureDetector(
              onTap: widget.onUserTap,
              child: Container(
                width: 60,
                height: 70,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: widget.userAvatarUrls[i],
                        width: 48,
                        height: 48,
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Text(
                        widget.usernames[i],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 10, color: SocialUiColor.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
