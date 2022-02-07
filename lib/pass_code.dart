class PassCode {
  var currentCodeLength = 0;

  void enterCode() {
    if (currentCodeLength < 4) {
      currentCodeLength += 1;
    }
  }

  void deleteCode() {
    if (currentCodeLength > 0) {
      currentCodeLength -= 1;
    }
  }
}
