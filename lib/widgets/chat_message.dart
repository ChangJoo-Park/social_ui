import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

// ignore: must_be_immutable
class ChatMessage extends StatelessWidget {
  ChatMessage({
    Key? key,
    required this.message,
    this.timesAgo,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.isContinuous = false,
    this.showTimesAgo = false,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  // Styles
  final MainAxisAlignment mainAxisAlignment;
  final bool isContinuous;
  final bool showTimesAgo;
  Color? backgroundColor;
  Color? textColor;

  // messages
  final String message;
  final String? timesAgo;

  @override
  Widget build(BuildContext context) {
    if (this.backgroundColor == null)
      this.backgroundColor = SocialUiColor.lightGreyWithOpacity20;
    if (textColor == null) this.textColor = SocialUiColor.black;

    double margin = isContinuous ? 4 : 8;
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (showTimesAgo && mainAxisAlignment == MainAxisAlignment.end)
            Expanded(
              flex: 0,
              child: Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(right: 8),
                child: Text(timesAgo!),
              ),
            ),
          Flexible(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    message,
                    softWrap: true,
                    style: TextStyle(
                      color: textColor,
                    ),
                    maxLines: 999,
                  ),
                ),
              ],
            ),
          ),
          if (showTimesAgo && mainAxisAlignment == MainAxisAlignment.start)
            Expanded(
              flex: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  timesAgo!,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
