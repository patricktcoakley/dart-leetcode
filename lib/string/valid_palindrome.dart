bool validPalindrome(String s) {
  bool isPalindrome(int left, int right) {
    while (left < right) {
      if (s[left] != s[right]) {
        return false;
      }

      left += 1;
      right -= 1;
    }
    return true;
  }

  var left = 0;
  var right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return isPalindrome(left + 1, right) || isPalindrome(left, right - 1);
    }

    left += 1;
    right -= 1;
  }

  return true;
}
