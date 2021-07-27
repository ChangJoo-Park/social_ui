import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class ImageListItem extends StatelessWidget {
  const ImageListItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final String imageUrl;
  final Widget title;
  final Widget? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(imageUrl: imageUrl)),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    title,
                    SizedBox(height: 8),
                    if (subtitle != null) subtitle!,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
