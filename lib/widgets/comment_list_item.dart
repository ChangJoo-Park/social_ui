import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class CommentListItem extends StatelessWidget {
  const CommentListItem({
    Key? key,
    required this.body,
    required this.username,
    required this.userAvatar,
    required this.subtitle,
    this.onCommentTap,
    this.onLongPress,
    this.onAvatarTap,
  }) : super(key: key);

  final String body;
  final String username;
  final String subtitle;
  final String userAvatar;
  final VoidCallback? onAvatarTap;
  final VoidCallback? onCommentTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onAvatarTap,
            child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(userAvatar),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: onCommentTap,
              onLongPress: onLongPress,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: SocialUiColor.lightGreyWithOpacity20,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        color: SocialUiColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      body,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            height: 1.2,
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        subtitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(height: 1, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
