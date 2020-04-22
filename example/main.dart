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
