import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class LoadMoreText extends StatelessWidget {
  const LoadMoreText({
    Key? key,
    this.text = 'Load more',
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
              (states) => Colors.redAccent.withOpacity(0.2)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: SocialUiColor.lightRed),
        ),
      ),
    );
  }
}
