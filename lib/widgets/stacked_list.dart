import 'package:flutter/material.dart';

class StackedList extends StatefulWidget {
  const StackedList({
    Key? key,
    this.expanded = false,
  }) : super(key: key);

  @override
  _StackedListState createState() => _StackedListState();

  final bool expanded;
}

class _StackedListState extends State<StackedList> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = 60.0;

    return GestureDetector(
      onTap: () {
        setState(() {
          expanded = !expanded;
        });
      },
      child: Container(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: expanded ? 0 : 0,
              left: 0,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutCubic,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            AnimatedPositioned(
              top: expanded ? 60 : 20,
              left: 0,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutCubic,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  boxShadow: expanded
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: Offset(0, -2),
                          ),
                        ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: expanded ? 120 : 40,
              left: 0,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutCubic,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  boxShadow: expanded
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: Offset(0, -2),
                          ),
                        ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: expanded ? 180 : 60,
              left: 0,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutCubic,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: expanded
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: Offset(0, -2),
                          ),
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
