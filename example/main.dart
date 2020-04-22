import 'package:flutter/material.dart';
import 'package:responsive_context/responsive_context.dart';

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
