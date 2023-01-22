import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('LRUCache tests', () {
    var lruCache = LRUCache(2);
    lruCache.put(1, 1);
    lruCache.put(2, 2);
    expect(lruCache.get(1), equals(1));
    lruCache.put(3, 3);
    expect(lruCache.get(2), equals(-1));
    lruCache.put(4, 4);
    expect(lruCache.get(1), equals(-1));
    expect(lruCache.get(3), equals(3));
    expect(lruCache.get(4), equals(4));
  });
}
