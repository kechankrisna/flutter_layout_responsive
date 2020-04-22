import 'package:flutter/widgets.dart';

import 'ScreenSize.dart';

extension ExtensionBoxConstrain on BoxConstraints {
  bool get isExtraSmall => this.maxWidth <= 600;
  bool get isSmall => this.maxWidth > 600 && this.maxWidth <= 768;
  bool get isMedium => this.maxWidth > 768 && this.maxWidth <= 992;
  bool get isLarge => this.maxWidth > 992 && this.maxWidth <= 1200;
  bool get isExtraLarge => this.maxWidth > 1200;

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
