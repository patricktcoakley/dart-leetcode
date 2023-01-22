import 'list_node.dart';

ListNode? reverseList(ListNode? head) {
  ListNode? prev;
  var curr = head;
  while (curr != null) {
    var next = curr.next;
    curr.next = prev;
    prev = curr;
    curr = next;
  }

  return prev;
}
