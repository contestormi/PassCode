import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  const MyTextButton(
      {Key? key, required this.callback, this.optionalWidget, this.text})
      : assert(optionalWidget != null || text != null),
        super(key: key);
  final VoidCallback callback;
  final Widget? optionalWidget;
  final String? text;

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color?>(Colors.grey[100]),
          foregroundColor: MaterialStateProperty.all<Color?>(Colors.black)),
      onPressed: () => widget.callback(),
      child: widget.optionalWidget ??
          Text(
            widget.text!,
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w300,
            ),
          ),
    );
  }
}
