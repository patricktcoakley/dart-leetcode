bool isSubsequence(String s, String t) {
  var left = 0;
  var right = 0;

  while (left < s.length && right < t.length) {
    if (s[left] == t[right]) {
      left += 1;
    }

    right += 1;
  }

  return left == s.length;
}
