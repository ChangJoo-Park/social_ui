import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
    required this.text,
    this.onActionPressed,
    this.actionText,
  }) : super(key: key);

  final String text;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: SocialUiColor.lightGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          if (actionText != null && actionText!.isNotEmpty)
            TextButton(
              onPressed: () {},
              child: Text(
                actionText!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: SocialUiColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
