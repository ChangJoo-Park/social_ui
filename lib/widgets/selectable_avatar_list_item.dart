import 'package:animated_appear/animated_appear.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SelectableAvatarListItem extends StatefulWidget {
  const SelectableAvatarListItem({
    Key? key,
    this.selected = false,
    required this.imageUrl,
    this.onTap,
    this.title,
    this.radius = 32,
  }) : super(key: key);

  final bool selected;
  final String imageUrl;
  final String? title;
  final VoidCallback? onTap;
  final double radius;
  @override
  _SelectableAvatarListItemState createState() =>
      _SelectableAvatarListItemState();
}

class _SelectableAvatarListItemState extends State<SelectableAvatarListItem> {
  @override
  Widget build(BuildContext context) {
    final double side = widget.radius * 2;

    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(widget.imageUrl),
                radius: widget.radius,
              ),
            ],
          ),
          if (widget.selected)
            AnimatedAppear(
              child: Container(
                width: side,
                height: side,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(side)),
                child: Icon(
                  Icons.check_outlined,
                  size: side * .6,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
