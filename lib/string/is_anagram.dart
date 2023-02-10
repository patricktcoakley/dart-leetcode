import 'dart:collection';

bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }

  var chars = HashMap<String, int>();
  for (var i = 0; i < s.length; i++) {
    chars
      ..update(s[i], (val) => val + 1, ifAbsent: () => 1)
      ..update(t[i], (val) => val - 1, ifAbsent: () => -1);
  }

  return chars.values.every((element) => element == 0);
}
