import 'package:flutter_test/flutter_test.dart';
import 'package:pass_code/pass_code.dart';

main() {
  test('Code length should be 0 at start', () {
    expect(PassCode().currentCodeLength, 0);
  });

  test('Code length should be incremented', () {
    final passCode = PassCode();
    passCode.enterCode();

    expect(passCode.currentCodeLength, 1);
  });

  test('Code length should be decremented', () {
    final passCode = PassCode();
    passCode.enterCode();
    passCode.deleteCode();

    expect(passCode.currentCodeLength, 0);
  });
}
