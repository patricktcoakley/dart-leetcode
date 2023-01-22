import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = ListNode.fromList([1, 2, 3, 4, 5]);
    var expected = ListNode.fromList([5, 4, 3, 2, 1]);
    var result = reverseList(input);
    expect(result, equals(expected));
  });

  test('example 2', () {
    var input = ListNode.fromList([1, 2]);
    var expected = ListNode.fromList([2, 1]);
    var result = reverseList(input);
    expect(result, equals(expected));
  });

  test('example 3', () {
    var input = ListNode.fromList([]);
    var result = reverseList(input);
    expect(result, equals(null));
  });
}
