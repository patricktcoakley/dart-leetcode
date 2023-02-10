import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var l1 = ListNode.fromList([2, 4, 3]);
    var l2 = ListNode.fromList([5, 6, 4]);
    var expected = ListNode.fromList([7, 0, 8]);
    expect(addTwoNumbers(l1, l2), expected);
  });

  test('example 2', () {
    var l1 = ListNode.fromList([0]);
    var l2 = ListNode.fromList([0]);
    var expected = ListNode.fromList([0]);
    expect(addTwoNumbers(l1, l2), expected);
  });

  test('example 3', () {
    var l1 = ListNode.fromList([9, 9, 9, 9, 9, 9, 9]);
    var l2 = ListNode.fromList([9, 9, 9, 9]);
    var expected = ListNode.fromList([8, 9, 9, 9, 0, 0, 0, 1]);
    expect(addTwoNumbers(l1, l2), expected);
  });
}
