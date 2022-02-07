import 'package:flutter/material.dart';

class NumberRows extends StatelessWidget {
  const NumberRows({Key? key, required this.numbers}) : super(key: key);
  final List<Widget> numbers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50, width: 50, child: Center(child: numbers[0])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[1])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[2])),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50, width: 50, child: Center(child: numbers[3])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[4])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[5])),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50, width: 50, child: Center(child: numbers[6])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[7])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[8])),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 50, width: 50, child: Center(child: numbers[9])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[10])),
            SizedBox(height: 50, width: 50, child: Center(child: numbers[11])),
          ],
        ),
      ],
    );
  }
}
