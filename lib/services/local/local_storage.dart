import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static late LocalStorageService instance;
  static late SharedPreferences _preferences;

// initialize the local storage
  static Future<LocalStorageService> getInstance() async {
    instance = LocalStorageService();
    _preferences = await SharedPreferences.getInstance();

    return instance;
  }

  // local storage handler to get the data
  dynamic _getFromDisk(String key) {
    final dynamic value = _preferences.get(key);
    return value;
  }

// local storage handler to save the data to the local storage
  void _saveToDisk<T>(String key, T content) {
    if (content is String) {
      _preferences.setString(key, content);
    } else if (content is bool) {
      _preferences.setBool(key, content);
    } else if (content is int) {
      _preferences.setInt(key, content);
    } else if (content is double) {
      _preferences.setDouble(key, content);
    }
  }

  // setters
  set isLoggedIn(bool isLoggedIn) {
    _saveToDisk('loggedIn', isLoggedIn);
  }

  set isFirstTime(bool isFirstTime) {
    _saveToDisk('firstTime', isFirstTime);
  }

  // getters
  bool get isLoggedIn => _getFromDisk('loggedIn') ?? false;
  bool get isFirstTime => _getFromDisk('firstTime') ?? true;
}
