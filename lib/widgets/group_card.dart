import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class GroupCard extends StatelessWidget {
  GroupCard({
    Key? key,
    required this.title,
    this.body,
    this.avatars = const [],
    this.backgroundColor = Colors.white,
    this.onTap,
  }) : super(key: key);

  final String title;
  final List<String>? avatars;
  final String? body;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color textColor = backgroundColor!.computeLuminance() > 0.5
        ? SocialUiColor.black
        : SocialUiColor.white;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: backgroundColor,
        child: Container(
          constraints: BoxConstraints(minHeight: 155),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
              ),
              if (body != null)
                Text(
                  body!,
                  style: TextStyle(color: textColor),
                ),
              SizedBox(height: 32),
              Row(
                children: List.generate(
                  avatars!.length,
                  (index) => Transform.translate(
                    offset: Offset(index * -1 * 6, 0),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: CachedNetworkImageProvider(
                        avatars![index],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
