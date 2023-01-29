import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  group('#fromList', () {
    test('returns null when @list is empty', () {
      expect(ListNode.fromList([]), equals(null));
    });

    test('returns a ListNode when @list has one element', () {
      expect(ListNode.fromList([1]), equals(ListNode(1)));
    });

    test('returns a ListNode when @list has multiple elements', () {
      var expected = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));
      var result = ListNode.fromList([1, 2, 3, 4]);
      expect(result, equals(expected));
    });
  });
}
