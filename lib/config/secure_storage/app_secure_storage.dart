import 'dart:developer';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  // Singleton
  static final AppSecureStorage _instance = AppSecureStorage._internal();

  factory AppSecureStorage() => _instance;

  AppSecureStorage._internal();

  // Secure Storage
  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  Future<void> saveSecureValue({
    required String key,
    required String value,
  }) async {
    try {
      await _storage.write(key: key, value: value);
      log('[SECURE_STORAGE] $key saved.');
    } catch (e) {
      log('[SECURE_STORAGE] $key NOT saved.');
    }
  }

  Future<String?> getSecureValue({required String key}) async {
    try {
      final value = await _storage.read(key: key);
      if (value != null) {
        log('[SECURE_STORAGE] $key found.');
        return value;
      } else {
        log('[SECURE_STORAGE] $key NULL.');
        return null;
      }
    } catch (e) {
      log('[SECURE_STORAGE] $key Error.');
      return null;
    }
  }

  Future<void> clearSecureValue({required String key}) async {
    try {
      await _storage.delete(key: key);
      log('[SECURE_STORAGE] $key deleted');
    } catch (e) {
      log('[SECURE_STORAGE] $key NOT deleted');
    }
  }

  Future<void> clearAllSecure() async => await _storage.deleteAll();
}
