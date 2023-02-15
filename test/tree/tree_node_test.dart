import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  group('#fromList', () {
    test('returns null when @nums is empty', () {
      expect(TreeNode.fromList([]), null);
    });

    test('returns a TreeNode when @nums has one element', () {
      var expected = TreeNode(1);
      expect(TreeNode.fromList([1]), expected);
    });

    test('returns a TreeNode when @nums has multiple elements', () {
      var expected = TreeNode(1, TreeNode(2), TreeNode(3));
      expect(TreeNode.fromList([1, 2, 3]), expected);
    });

    test('returns a TreeNode when @nums has multiple elements including nulls',
        () {
      var input = [3, 9, 20, null, null, 15, 7];
      var expected =
          TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)));
      var result = TreeNode.fromList(input);
      expect(result, expected);
    });
  });
}
