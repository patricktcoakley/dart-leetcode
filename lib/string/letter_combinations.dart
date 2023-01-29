List<String> letterCombinations(String digits) {
  const chars = {
    '1': '',
    '2': 'abc',
    '3': 'def',
    '4': 'ghi',
    '5': 'jkl',
    '6': 'mno',
    '7': 'pqrs',
    '8': 'tuv',
    '9': 'wxyz',
    '0': '',
  };

  var combinations = <String>[];
  if (digits.isEmpty) {
    return combinations;
  }

  void letterCombinations(int index, String current) {
    if (index == digits.length) {
      combinations.add(current);
      return;
    }

    var letters = chars[digits[index]]!;
    for (var i = 0; i < letters.length; i++) {
      var c = letters[i];
      letterCombinations(index + 1, current + c);
    }
  }

  letterCombinations(0, '');

  return combinations;
}
