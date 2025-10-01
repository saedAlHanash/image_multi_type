// import 'dart:io';
//
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:image/image.dart' as img;
//
// class CompressedCacheManager extends CacheManager {
//   static const key = 'compressedCache';
//   static final CompressedCacheManager _instance = CompressedCacheManager._();
//   factory CompressedCacheManager() => _instance;
//
//   CompressedCacheManager._()
//       : super(Config(
//           key,
//           maxNrOfCacheObjects: 100,
//           stalePeriod: Duration(days: 7),
//         ));
//
//   @override
//   Future<File> getSingleFile(String url, {String? key}) async {
//     key ??= url;
//     var file = await getFileFromCache(key);
//
//     if (file != null && file.validTill.isAfter(DateTime.now())) {
//       return file.file;
//     }
//
//     // تحميل الصورة الأصلية
//     final originalFile = await super.getSingleFile(url);
//     final originalBytes = await originalFile.readAsBytes();
//
//     // ضغط الصورة
//     final compressedBytes = await _compressImage(originalBytes);
//
//     // حفظ النسخة المضغوطة
//     final compressedFile = File('${await getFilePath()}/compressed_${_getFileName(key)}');
//     await compressedFile.writeAsBytes(compressedBytes);
//
//     return compressedFile;
//   }
//
//   Future<Uint8List> _compressImage(Uint8List originalBytes) async {
//     try {
//       final image = img.decodeImage(originalBytes);
//       if (image == null) return originalBytes;
//
//       // تغيير الحجم إلى حد أقصى 1200x1200
//       final resizedImage = img.copyResize(
//         image,
//         width: image.width > 1200 ? 1200 : image.width,
//         height: image.height > 1200 ? 1200 : image.height,
//         maintainAspect: true,
//       );
//
//       // ضغط الجودة إلى 70%
//       return img.encodeJpg(resizedImage, quality: 70) as Uint8List;
//     } catch (e) {
//       return originalBytes; // في حالة الخطأ نرجع الصورة الأصلية
//     }
//   }
//
//   String _getFileName(String key) {
//     return key.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_');
//   }
// }
