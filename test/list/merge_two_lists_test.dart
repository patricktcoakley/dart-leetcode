import 'package:leetcode/leetcode.dart';
import 'package:leetcode/list/merge_two_lists.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var list1 = ListNode.fromList([1, 2, 4]);
    var list2 = ListNode.fromList([1, 3, 4]);
    var expected = ListNode.fromList([1, 1, 2, 3, 4, 4]);
    var result = mergeTwoLists(list1, list2);
    expect(mergeTwoLists(list1, list2), equals(expected));
  });

  test('example 2', () {
    var list1 = ListNode.fromList([]);
    var list2 = ListNode.fromList([]);
    var expected = ListNode.fromList([]);
    expect(mergeTwoLists(list1, list2), equals(expected));
  });

  test('example 3', () {
    var list1 = ListNode.fromList([]);
    var list2 = ListNode.fromList([0]);
    var expected = ListNode.fromList([0]);
    expect(mergeTwoLists(list1, list2), equals(expected));
  });
}
