import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    expect(removeElement([3,2,2,3], 3), equals(2));
  });

  test('example 2', () {
    expect(removeElement([0,1,2,2,3,0,4,2], 2), equals(5));
  });
}
