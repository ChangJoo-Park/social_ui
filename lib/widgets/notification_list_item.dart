import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.leading,
  }) : super(key: key);

  final Widget leading;
  final String title;
  final String subtitle;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          leading,
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: SocialUiColor.grey),
                )
              ],
            ),
          ),
          SizedBox(width: 4),
          Text(
            trailing,
            style: TextStyle(fontSize: 10, color: SocialUiColor.grey),
          ),
        ],
      ),
    );
  }
}
