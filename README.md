# responsive

This is a resposive extension which allow you to spefic screen and screensize in your flutter application. You do not need to remember size width.

## Example

```
import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

main1() {
  return Container(
    child: LayoutBuilder(builder: (ctx, constrain) {
      // return Text("${!constrain.isExtraLarge? "HIDE" : "SHOW"}");
      return Text("${ctx.isExtraLarge}");
    }),
  );
}


main() {
  return Container(
    child: LayoutBuilder(builder: (ctx, constrain) {
      // return Text("${!constrain.isExtraLarge? "HIDE" : "SHOW"}");
      return Text("${constrain.isExtraLarge}");
    }),
  );
}

```

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
