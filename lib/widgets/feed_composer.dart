import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class FeedComposer extends StatefulWidget {
  const FeedComposer({
    Key? key,
    required this.onSendPressed,
    required this.textEditingController,
    required this.focusNode,
    this.composeButtonText = 'Compose',
  }) : super(key: key);

  final Function(String message) onSendPressed;
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String composeButtonText;

  @override
  _FeedComposerState createState() => _FeedComposerState();
}

class _FeedComposerState extends State<FeedComposer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Form(
              child: TextFormField(
                controller: widget.textEditingController,
                focusNode: widget.focusNode,
                maxLines: 4,
                style: TextStyle(color: SocialUiColor.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  hintText: 'Write message...',
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextButton(
                    onPressed: () {
                      widget.onSendPressed(widget.textEditingController.text);
                    },
                    child: Text(widget.composeButtonText),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
