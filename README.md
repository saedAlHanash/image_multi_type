# Image Multi Type

[English](#english) | [العربية](#arabic)

---

## English

A comprehensive Flutter package for handling multiple image types with advanced caching, error handling, and support for various image formats.

### ✨ Features

- **Multiple Image Types**: Support for network, asset, SVG, file, and custom widgets
- **Smart Caching**: Built-in caching for network images with error handling
- **Flexible Widgets**: Circle, rounded, and custom image widgets
- **Error Handling**: Configurable error widgets and fallback images
- **Performance**: Optimized for smooth scrolling and memory management

### 🚀 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  image_multi_type: ^1.0.5
```

### 📖 Usage

#### Basic ImageMultiType Widget

```dart
import 'package:image_multi_type/image_multi_type.dart';

// Network image
ImageMultiType(
  url: 'https://example.com/image.jpg',
  height: 200,
  width: 200,
  fit: BoxFit.cover,
)

// Asset image
ImageMultiType(
  url: 'assets/images/logo.png',
  height: 100,
  width: 100,
)

// SVG asset
ImageMultiType(
  url: 'assets/icons/icon.svg',
  height: 50,
  width: 50,
  color: Colors.blue,
  colorBlendMode: BlendMode.srcIn,
)
```

#### Circle Image Widget

```dart
CircleImageWidget(
  url: 'https://example.com/profile.jpg',
  size: 80,
  color: Colors.grey[200],
  margin: EdgeInsets.all(8),
)
```

#### Rounded Image Widget

```dart
RoundImageWidget(
  url: 'https://example.com/card.jpg',
  height: 200,
  width: 300,
  radios: 16,
  fit: BoxFit.cover,
)
```

#### Setting Error Image

```dart
// Set a custom error image
setImageMultiTypeErrorImage('assets/images/error.png');

// Or use a widget
setImageMultiTypeErrorImage(
  Icon(Icons.error, color: Colors.red, size: 50)
);
```

#### Advanced Usage

```dart
// File from bytes
ImageMultiType(
  url: Uint8List.fromList([...]),
  height: 200,
  width: 200,
)

// Async file loading
ImageMultiType(
  url: Future<Uint8List>.value(Uint8List.fromList([...])),
  height: 200,
  width: 200,
)

// Custom widget
ImageMultiType(
  url: Container(
    color: Colors.blue,
    child: Text('Custom Widget'),
  ),
  height: 100,
  width: 100,
)
```

### 🔧 API Reference

#### ImageMultiType

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `url` | `dynamic` | Yes | Image source (URL, asset path, bytes, widget, etc.) |
| `height` | `double?` | No | Widget height |
| `width` | `double?` | No | Widget width |
| `fit` | `BoxFit?` | No | How to fit the image |
| `color` | `Color?` | No | Tint color for the image |
| `colorBlendMode` | `BlendMode?` | No | How to blend the color |
| `defaultTempImage` | `bool` | No | Show default placeholder (default: false) |

#### CircleImageWidget

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `url` | `dynamic` | Yes | Image source |
| `size` | `double?` | No | Size of the circle (default: 100) |
| `color` | `Color?` | No | Background color (default: white) |
| `colorBlendMode` | `BlendMode?` | No | How to blend the color |
| `margin` | `EdgeInsets?` | No | Outer margin |
| `padding` | `EdgeInsets?` | No | Inner padding |

#### RoundImageWidget

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `url` | `dynamic` | Yes | Image source |
| `height` | `double?` | No | Widget height |
| `width` | `double?` | No | Widget width |
| `radios` | `double?` | No | Border radius (default: 12) |
| `fit` | `BoxFit?` | No | How to fit the image |
| `color` | `Color?` | No | Tint color |
| `colorBlendMode` | `BlendMode?` | No | How to blend the color |

### 📱 Example App

Check out the `example` folder for a complete working app demonstrating all features.

### 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## العربية

حزمة Flutter شاملة لمعالجة أنواع متعددة من الصور مع دعم التخزين المؤقت المتقدم ومعالجة الأخطاء ودعم تنسيقات الصور المختلفة.

### ✨ المميزات

- **أنواع متعددة من الصور**: دعم للصور من الإنترنت والأصول وملفات SVG والملفات والعناصر المخصصة
- **تخزين مؤقت ذكي**: تخزين مؤقت مدمج للصور من الإنترنت مع معالجة الأخطاء
- **عناصر مرنة**: عناصر صور دائرية ومستديرة ومخصصة
- **معالجة الأخطاء**: عناصر أخطاء قابلة للتكوين وصور احتياطية
- **الأداء**: محسّن للتمرير السلس وإدارة الذاكرة

### 🚀 التثبيت

أضف هذا إلى ملف `pubspec.yaml` في مشروعك:

```yaml
dependencies:
  image_multi_type: ^1.0.5
```

### 📖 الاستخدام

#### عنصر ImageMultiType الأساسي

```dart
import 'package:image_multi_type/image_multi_type.dart';

// صورة من الإنترنت
ImageMultiType(
  url: 'https://example.com/image.jpg',
  height: 200,
  width: 200,
  fit: BoxFit.cover,
)

// صورة من الأصول
ImageMultiType(
  url: 'assets/images/logo.png',
  height: 100,
  width: 100,
)

// ملف SVG من الأصول
ImageMultiType(
  url: 'assets/icons/icon.svg',
  height: 50,
  width: 50,
  color: Colors.blue,
  colorBlendMode: BlendMode.srcIn,
)
```

#### عنصر الصورة الدائرية

```dart
CircleImageWidget(
  url: 'https://example.com/profile.jpg',
  size: 80,
  color: Colors.grey[200],
  margin: EdgeInsets.all(8),
)
```

#### عنصر الصورة المستديرة

```dart
RoundImageWidget(
  url: 'https://example.com/card.jpg',
  height: 200,
  width: 300,
  radios: 16,
  fit: BoxFit.cover,
)
```

#### تعيين صورة الخطأ

```dart
// تعيين صورة خطأ مخصصة
setImageMultiTypeErrorImage('assets/images/error.png');

// أو استخدام عنصر
setImageMultiTypeErrorImage(
  Icon(Icons.error, color: Colors.red, size: 50)
);
```

#### استخدام متقدم

```dart
// ملف من البايتات
ImageMultiType(
  url: Uint8List.fromList([...]),
  height: 200,
  width: 200,
)

// تحميل ملف غير متزامن
ImageMultiType(
  url: Future<Uint8List>.value(Uint8List.fromList([...])),
  height: 200,
  width: 200,
)

// عنصر مخصص
ImageMultiType(
  url: Container(
    color: Colors.blue,
    child: Text('عنصر مخصص'),
  ),
  height: 100,
  width: 100,
)
```

### 🔧 مرجع API

#### ImageMultiType

| المعامل | النوع | مطلوب | الوصف |
|---------|-------|--------|--------|
| `url` | `dynamic` | نعم | مصدر الصورة (رابط، مسار أصول، بايتات، عنصر، إلخ) |
| `height` | `double?` | لا | ارتفاع العنصر |
| `width` | `double?` | لا | عرض العنصر |
| `fit` | `BoxFit?` | لا | كيفية ملائمة الصورة |
| `color` | `Color?` | لا | لون التلوين للصورة |
| `colorBlendMode` | `BlendMode?` | لا | كيفية دمج اللون |
| `defaultTempImage` | `bool` | لا | إظهار صورة احتياطية افتراضية (افتراضي: خطأ) |

#### CircleImageWidget

| المعامل | النوع | مطلوب | الوصف |
|---------|-------|--------|--------|
| `url` | `dynamic` | نعم | مصدر الصورة |
| `size` | `double?` | لا | حجم الدائرة (افتراضي: 100) |
| `color` | `Color?` | لا | لون الخلفية (افتراضي: أبيض) |
| `colorBlendMode` | `BlendMode?` | لا | كيفية دمج اللون |
| `margin` | `EdgeInsets?` | لا | الهامش الخارجي |
| `padding` | `EdgeInsets?` | لا | الحشو الداخلي |

#### RoundImageWidget

| المعامل | النوع | مطلوب | الوصف |
|---------|-------|--------|--------|
| `url` | `dynamic` | نعم | مصدر الصورة |
| `height` | `double?` | لا | ارتفاع العنصر |
| `width` | `double?` | لا | عرض العنصر |
| `radios` | `double?` | لا | نصف قطر الحدود (افتراضي: 12) |
| `fit` | `BoxFit?` | لا | كيفية ملائمة الصورة |
| `color` | `Color?` | لا | لون التلوين |
| `colorBlendMode` | `BlendMode?` | لا | كيفية دمج اللون |

### 📱 تطبيق المثال

تحقق من مجلد `example` للحصول على تطبيق كامل يعمل ويوضح جميع المميزات.

### 🤝 المساهمة

نرحب بالمساهمات! لا تتردد في إرسال طلب سحب.

### 📄 الترخيص

هذا المشروع مرخص بموجب رخصة MIT - راجع ملف [LICENSE](LICENSE) للتفاصيل.
