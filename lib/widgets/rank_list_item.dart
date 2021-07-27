import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/social_ui.dart';

class RankListItem extends StatelessWidget {
  const RankListItem({
    Key? key,
    required this.rankBadge,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  final RankBadge rankBadge;
  final String title;
  final String subtitle;
  final String trailing;
  final String imageUrl;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: SocialUiColor.lightGreyWithOpacity20,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: rankBadge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(imageUrl),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: SocialUiColor.primaryColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: Text(
                trailing,
                style: TextStyle(color: SocialUiColor.lightRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
