import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({Key? key, required this.userAvatarUrls}) : super(key: key);
  final List<String> userAvatarUrls;

  @override
  Widget build(BuildContext context) {
    Widget avatar = Container();
    switch (userAvatarUrls.length) {
      case 1:
        avatar = CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(userAvatarUrls.first),
          radius: 16,
        );
        break;
      case 2:
        avatar = Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(userAvatarUrls.first),
                radius: 16,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(userAvatarUrls.last),
                radius: 16,
              ),
            ),
          ],
        );
        break;
      case 3:
        avatar = Stack(
          children: [
            Positioned(
              top: 0,
              left: 12,
              child: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(userAvatarUrls[0]),
                  radius: 12),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(userAvatarUrls[1]),
                  radius: 12),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(userAvatarUrls[2]),
                  radius: 12),
            ),
          ],
        );
        break;
      default:
        Container();
        break;
    }
    return Container(width: 48, height: 48, child: avatar);
  }
}
