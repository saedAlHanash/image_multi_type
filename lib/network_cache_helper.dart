import 'dart:typed_data';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

/// Helper class for network cache operations
class NetworkCacheHelper {
  /// Get cached file from URL
  static Future<Uint8List> getCachedFile(String url) async {
    var file = await DefaultCacheManager().getSingleFile(url);
    return await file.readAsBytes();
  }

  /// Clear all cached files
  static Future<void> clearCache() async {
    await DefaultCacheManager().emptyCache();
  }

  /// Remove specific URL from cache
  static Future<void> removeFromCache(String url) async {
    await DefaultCacheManager().removeFile(url);
  }

  /// Check if URL is cached
  static Future<bool> isCached(String url) async {
    try {
      final file = await DefaultCacheManager().getFileFromCache(url);
      return file != null;
    } catch (e) {
      return false;
    }
  }
}
