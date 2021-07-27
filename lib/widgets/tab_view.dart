import 'package:animated_appear/animated_appear.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/colors.dart';

class TabView extends StatefulWidget {
  TabView({
    Key? key,
    required this.selected,
    required this.children,
    required this.onTap,
    required this.labels,
  }) : super(key: key);

  final int selected;
  final List<Widget> children;
  final List<String> labels;
  final ValueChanged<int> onTap;
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: kToolbarHeight,
            child: Row(
              children: [
                for (int i = 0; i < widget.labels.length; i++)
                  _TabButton(
                    title: widget.labels[i],
                    index: i,
                    isSelected: widget.selected == i,
                    onTap: widget.onTap,
                  )
              ],
            ),
          ),
          AnimatedAppear(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCirc,
            key: ValueKey('TAB_${widget.selected}'),
            child: widget.children[widget.selected],
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    Key? key,
    required this.title,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final bool isSelected;
  final int index;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      color: SocialUiColor.lightGrey,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );

    return TextButton(
      onPressed: () => onTap(index),
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
          (states) => Colors.transparent,
        ),
      ),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: isSelected ? style.copyWith(color: SocialUiColor.black) : style,
        child: Text(title),
      ),
    );
  }
}
