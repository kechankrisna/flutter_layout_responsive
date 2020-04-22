import 'package:flutter/widgets.dart';

import 'ScreenSize.dart';

extension ExtensionBuildConext on BuildContext {
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isExtraSmall => MediaQuery.of(this).size.width <= 600;
  bool get isSmall =>
      MediaQuery.of(this).size.width > 600 &&
      MediaQuery.of(this).size.width <= 768;
  bool get isMedium =>
      MediaQuery.of(this).size.width > 768 &&
      MediaQuery.of(this).size.width <= 992;
  bool get isLarge =>
      MediaQuery.of(this).size.width > 992 &&
      MediaQuery.of(this).size.width <= 1200;
  bool get isExtraLarge => MediaQuery.of(this).size.width > 1200;
  double get maxWidth => MediaQuery.of(this).size.width;
  String get screen {
    if (isExtraSmall) return "ExtraSmall";
    if (isSmall) return "Small";
    if (isMedium) return "Medium";
    if (isLarge) return "Large";
    if (isExtraLarge) return "ExtraLarge";
    return "Unknown";
  }

  ScreenSize get screenSize {
    if (isExtraSmall) return ScreenSize.xs;
    if (isSmall) return ScreenSize.sm;
    if (isMedium) return ScreenSize.md;
    if (isLarge) return ScreenSize.lg;
    if (isExtraLarge) return ScreenSize.xl;
    return ScreenSize.unknown;
  }
}
