import 'package:flutter/material.dart';
import 'package:pass_code/pass_code.dart';
import 'package:pass_code/widgets/code_panel.dart';
import 'package:pass_code/widgets/my_text_button.dart';
import 'package:pass_code/widgets/number_rows.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PassCodeScreen(),
    );
  }
}

class PassCodeScreen extends StatefulWidget {
  const PassCodeScreen({Key? key}) : super(key: key);

  @override
  State<PassCodeScreen> createState() => _PassCodeScreenState();
}

class _PassCodeScreenState extends State<PassCodeScreen> {
  PassCode passCode = PassCode();

  void _enterCode() {
    setState(() {
      passCode.enterCode();
    });
  }

  void _deleteCode() {
    setState(() {
      passCode.deleteCode();
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height / 40, bottom: height / 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  key: const Key('top_icon'),
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    'assets/help_outline_icon.png',
                    scale: 2,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Please enter PIN code',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height / 11, bottom: height / 4),
            child: CodePanel(
              key: const Key('pin_code_circles'),
              currentLength: passCode.currentCodeLength,
              borderColor: Colors.grey,
              foregroundColor: Colors.transparent,
            ),
          ),
          NumberRows(
            numbers: [
              for (var i = 1; i < 10; i++)
                MyTextButton(
                  callback: _enterCode,
                  text: '$i',
                ),
              MyTextButton(
                callback: () {},
                optionalWidget: Image.asset(
                  'assets/fingerprint_icon.png',
                  scale: 2.5,
                ),
              ),
              MyTextButton(
                callback: _enterCode,
                text: '0',
              ),
              MyTextButton(
                key: const Key('backspace_icon'),
                callback: _deleteCode,
                optionalWidget: Image.asset(
                  'assets/backspace_icon.png',
                  scale: 2.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
