String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return '';
  }

  for (var charIndex = 0; charIndex < strs.first.length; charIndex++) {
    var char = strs.first[charIndex];
    for (var str in strs.skip(1)) {
      if (charIndex == str.length || str[charIndex] != char) {
        return strs.first.substring(0, charIndex);
      }
    }
  }

  return strs.first;
}
