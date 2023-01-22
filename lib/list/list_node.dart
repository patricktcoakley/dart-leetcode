class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  static ListNode? fromList(List<int> list) {
    if (list.isEmpty) {
      return null;
    }

    var head = ListNode();
    list.fold(head, (previousValue, element) {
      return previousValue.next = ListNode(element);
    });

    return head.next;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListNode &&
          runtimeType == other.runtimeType &&
          val == other.val &&
          next == other.next;

  @override
  int get hashCode => val.hashCode ^ next.hashCode;
}
