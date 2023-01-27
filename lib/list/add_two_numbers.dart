import 'list_node.dart';

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  var root = ListNode();
  ListNode? curr = root;
  var carry = 0;
  var total = 0;
  while (l1 != null || l2 != null) {
    total = carry + (l1?.val ?? 0) + (l2?.val ?? 0);
    carry = total ~/ 10;
    curr!.next = ListNode(total % 10);
    curr = curr.next;
    l1 = l1?.next;
    l2 = l2?.next;
  }

  if (carry > 0) {
    curr!.next = ListNode(carry);
  }
  return root.next;
}
