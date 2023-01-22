bool isValid(String s) {
  const m = {
    '}': '{',
    ']': '[',
    ')': '(',
  };

  if (s.isEmpty) {
    return true;
  }

  var stack = <String>[];
  String c;
  for (var code in s.codeUnits) {
    c = String.fromCharCode(code);
    if (m.containsKey(c)) {
      if (stack.isEmpty || stack.removeLast() != m[c]) {
        return false;
      }
    } else {
      stack.add(c);
    }
  }

  return stack.isEmpty;
}
