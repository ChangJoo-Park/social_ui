import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class CommentComposer extends StatefulWidget {
  const CommentComposer({
    Key? key,
    required this.userAvatarUrl,
    required this.onAvatarTap,
  }) : super(key: key);

  final String userAvatarUrl;
  final VoidCallback onAvatarTap;
  @override
  _CommentComposerState createState() => _CommentComposerState();
}

class _CommentComposerState extends State<CommentComposer> {
  String body = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: widget.onAvatarTap,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: CachedNetworkImageProvider(widget.userAvatarUrl),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Form(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: TextFormField(
                  style: TextStyle(color: SocialUiColor.black),
                  decoration: InputDecoration(hintText: 'Write comment...'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
