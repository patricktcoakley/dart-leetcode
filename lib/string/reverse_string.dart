void reverseString(List<String> s) {
  var left = 0;
  var right = s.length - 1;

  while (left <= right) {
    var t = s[left];
    s[left] = s[right];
    s[right] = t;

    left += 1;
    right -= 1;
  }
}
