import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  group('#fromList', () {
    test('returns null when @list is empty', () {
      expect(ListNode.fromList([]), null);
    });

    test('returns a ListNode when @list has one element', () {
      var expected = ListNode(1);
      expect(ListNode.fromList([1]), expected);
    });

    test('returns a ListNode when @list has multiple elements', () {
      var expected = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));
      var result = ListNode.fromList([1, 2, 3, 4]);
      expect(result, expected);
    });
  });
}
