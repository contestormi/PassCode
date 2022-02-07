import 'package:flutter/material.dart';

class CodePanel extends StatelessWidget {
  final int currentLength;
  final Color borderColor;
  final Color foregroundColor;
  final height = 30.0;
  final width = 30.0;

  const CodePanel({
    Key? key,
    required this.currentLength,
    required this.borderColor,
    required this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var circles = <Widget>[];

    for (int i = 1; i <= 4; i++) {
      if (i > currentLength) {
        circles.add(SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: 2.0),
                  color: foregroundColor),
            )));
      } else {
        circles.add(SizedBox(
            width: width,
            height: height,
            child: Container(
              
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: borderColor, width: 1.0),
                color: borderColor,
              ),
            )));
      }
    }

    return SizedBox(
      height: 30.0,
      width: 180.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: circles,
      ),
    );
  }
}
