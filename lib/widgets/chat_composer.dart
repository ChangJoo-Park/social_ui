import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';
import 'package:social_ui/social_ui.dart';

class ChatComposer extends StatefulWidget {
  const ChatComposer({
    Key? key,
    required this.onSendPressed,
    required this.textEditingController,
    required this.focusNode,
  }) : super(key: key);

  final Function(String message) onSendPressed;
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  @override
  _ChatComposerState createState() => _ChatComposerState();
}

class _ChatComposerState extends State<ChatComposer> {
  String body = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Form(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: TextFormField(
                  controller: widget.textEditingController,
                  focusNode: widget.focusNode,
                  style: TextStyle(color: SocialUiColor.lightRed),
                  decoration: InputDecoration(hintText: 'Write messages..'),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              widget.onSendPressed(widget.textEditingController.text);
            },
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
