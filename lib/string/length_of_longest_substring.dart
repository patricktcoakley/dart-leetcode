import 'dart:math';

int lengthOfLongestSubstring(String s) {
  var map = <String, int>{};
  var longest = 0;
  var left = 0;
  for (var right = 0; right < s.length; right++) {
    var c = s[right];
    if (map.containsKey(c)) {
      left = max(left, map[c]!);
    }

    longest = max(longest, right - left + 1);
    map[c] = right + 1;
  }

  return longest;
}
