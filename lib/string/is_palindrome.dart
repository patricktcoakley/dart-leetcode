bool isPalindrome(String s) {
  final regex = RegExp(r'(\W|_)');
  var clean = s.replaceAll(regex, '');
  var right = clean.length - 1;
  for (var left = 0; left < right; left++, right--) {
    if (clean[left].toUpperCase() != clean[right].toUpperCase()) {
      return false;
    }
  }

  return true;
}
