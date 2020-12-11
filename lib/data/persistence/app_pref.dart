import 'package:shared_preferences/shared_preferences.dart';

abstract class Pref {
  Future<bool> save(String key, String value);

  Future<String> get(String key);
}

/// This class for the properties need to be saved permanently
/// like iOS UserDefault or Android SharedPreferences
class PerisistencePref extends Pref {
  @override
  Future<String> get(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

  @override
  Future<bool> save(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(key, value);
  }
}

/// This class for the properties that be saved temporarily in memory
class MemoryPref extends Pref {
  Map<String, Object> memoryMap = new Map<String, Object>();

  @override
  Future<String> get(String key) async {
    return Future.value(memoryMap[key]);
  }

  @override
  Future<bool> save(String key, String value) async {
    memoryMap[key] = value;
    return Future.value(true);
  }
}
