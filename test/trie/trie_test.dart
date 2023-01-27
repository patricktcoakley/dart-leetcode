import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('Trie tests', () {
    final trie = Trie();
    trie.insert('apple');
    expect(trie.search('apple'), isTrue);
    expect(trie.search('app'), isFalse);
    expect(trie.startsWith('app'), isTrue);
    trie.insert('app');
    expect(trie.search('app'), isTrue);
  });
}
