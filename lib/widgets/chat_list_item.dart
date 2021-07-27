import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';
import 'package:social_ui/widgets/chat_avatar.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    Key? key,
    required this.name,
    required this.userAvatarUrls,
    required this.count,
    this.subtitle = '',
  }) : super(key: key);

  final List<String> userAvatarUrls;

  final String name;
  final String subtitle;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ChatAvatar(userAvatarUrls: userAvatarUrls),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: SocialUiColor.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: 4),
          if (count > 0)
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                color: SocialUiColor.lightRed,
                borderRadius: BorderRadius.circular(4),
              ),
              child: FittedBox(
                child: Text(
                  '$count',
                  style: TextStyle(fontSize: 16, color: SocialUiColor.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
