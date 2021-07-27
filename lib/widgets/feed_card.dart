import 'package:animated_appear/animated_appear.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/social_ui.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    Key? key,
    required this.username,
    required this.userSubtitle,
    required this.userAvatarUrl,
    required this.body,
    this.imageUrl,
  }) : super(key: key);

  final String username;
  final String userSubtitle;
  final String userAvatarUrl;
  final String body;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // User Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: UserHeader(
              username: username,
              subtitle: userSubtitle,
              url: userAvatarUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              body,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(height: 1),
              overflow: TextOverflow.ellipsis,
              maxLines: imageUrl != null ? 2 : 3,
            ),
          ),
          if (imageUrl != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AnimatedAppear(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return Container(color: Colors.amber.withOpacity(0.2));
                      },
                      imageUrl: imageUrl!,
                    ),
                  ),
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ButtonBar(
              alignment: MainAxisAlignment.start,
              buttonPadding: EdgeInsets.zero,
              children: [
                IconButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  constraints: BoxConstraints(minWidth: 12),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  constraints: BoxConstraints(minWidth: 12),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.comment_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  constraints: BoxConstraints(minWidth: 12),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.share_outlined),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
