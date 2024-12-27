import 'dart:convert';

class StorageService {
  StorageService._internal();

  static final StorageService _instance = StorageService._internal();
  factory StorageService() {
    return _instance;
  }

  final _storage = <String, dynamic>{};

  T read<T>(String key, {dynamic nullT}) {
    final value = _storage[key];
    if (value != null) {
      return value as T;
    } else {
      return nullT;
    }
  }

  Map<String, dynamic> readObject(String key) {
    final read = _storage[key];
    if (read != null) {
      return json.decode(read) as Map<String, dynamic>;
    } else {
      return {};
    }
  }

  Future<void> write(String key, dynamic value) async {
    _storage[key] = value;
  }

  Future<void> writeObject(String key, dynamic value) async {
    final data = json.encode(value.toJson());
    _storage[key] = data;
  }

  Future<void> remove(String key) async {
    _storage.remove(key);
  }
}
