# Changelog

All notable changes to the `image_multi_type` package will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-01-09

### Added
- Initial release of `image_multi_type` package
- `ImageMultiType` widget supporting multiple image types:
  - Network images with caching
  - Asset images
  - SVG assets
  - File bytes
  - Async file loading
  - Custom widgets
  - Flutter icons
- `CircleImageWidget` for circular image display
- `RoundImageWidget` for rounded corner images
- `NetworkCacheHelper` utility class for cache management
- Comprehensive error handling with customizable error widgets
- Support for color tinting and custom styling
- Built-in caching for network images using `flutter_cache_manager`
- SVG support using `flutter_svg`

### Features
- Smart image type detection based on input
- Automatic fallback to error widgets on failure
- Configurable error images and placeholders
- Performance optimized for smooth scrolling
- Memory efficient image handling
- Support for all Flutter platforms (iOS, Android, Web, Desktop)

### Dependencies
- `flutter_svg: ^2.2.0` for SVG support
- `cached_network_image: ^3.4.1` for network image caching
- `flutter_cache_manager: ^3.4.1` for advanced cache management

## [0.0.1] - 2025-01-09

### Added
- Initial development version
- Basic image type support
- Core widget structure
