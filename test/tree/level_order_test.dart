import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var input = TreeNode.fromList([3, 9, 20, null, null, 15, 7]);
    var expected = [[3], [9, 20], [15, 7]
    ];
    expect(levelOrder(input), equals(expected));
  });

  test('example 2', () {
    var input = TreeNode.fromList([1]);
    var expected = [[1]];
    expect(levelOrder(input), equals(expected));
  });

  test('example 3', () {
    var input = TreeNode.fromList([]);
    var expected = [];
    expect(levelOrder(input), equals(expected));
  });
}
