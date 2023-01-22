import 'dart:collection';

class LRUCache {
  final LinkedHashMap<int, int> _cache = LinkedHashMap();
  late final int _capacity;

  LRUCache(int capacity) {
    _capacity = capacity;
  }

  int get(int key) {
    if (_cache.containsKey(key)) {
      var removed = _cache.remove(key)!;
      _cache[key] = removed;
      return _cache[key]!;
    }

    return -1;
  }

  void put(int key, int value) {
    if (_cache.containsKey(key)) {
      _cache.remove(key);
      _cache[key] = value;
      return;
    }

    if (_capacity == _cache.length) {
      _cache.remove(_cache.entries.first.key);
    }

    _cache[key] = value;
  }
}
