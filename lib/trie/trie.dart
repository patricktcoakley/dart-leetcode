import 'dart:collection';

class _TrieNode {
  final HashMap<int, _TrieNode> _children = HashMap();
  var isTerminal = false;

  bool contains(String s) => _children.containsKey(s.codeUnitAt(0));
  operator [](String s) => _children[s.codeUnitAt(0)];
  operator []=(String s, _TrieNode t) => _children[s.codeUnitAt(0)] = t;
}

class Trie {
  final _head = _TrieNode();

  _TrieNode? _searchPrefix(String prefix) {
    var curr = _head;

    for (var i = 0; i < prefix.length; i++) {
      var c = prefix[i];
      if (!curr.contains(c)) {
        return null;
      }
      curr = curr[c];
    }
    return curr;
  }

  void insert(String word) {
    var curr = _head;
    for (var i = 0; i < word.length; i++) {
      var c = word[i];

      if (!curr.contains(c)) {
        curr[c] = _TrieNode();
      }

      curr = curr[c];
    }

    curr.isTerminal = true;
  }

  bool search(String word) => _searchPrefix(word)?.isTerminal ?? false;
  bool startsWith(String prefix) => _searchPrefix(prefix) != null;
}
