import 'package:flutter/material.dart';
import 'package:responsive_context/responsive_context.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => DatePickerPage(),
      },
    );
  }
}

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Context"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 600,
                // height: 600,
                // width: MediaQuery.of(context).size.width,
                child: LayoutBuilder(
                  builder: (ctx, constrain) {
                    // return Text("${!ctx.isExtraLarge? "HIDE" : "SHOW"}");
                    return GridView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(15),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: constrain.isExtraSmall
                                ? 1
                                : constrain.isSmall
                                    ? 2
                                    : constrain.isMedium
                                        ? 3
                                        : constrain.isLarge ? 4 : 5,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                        children: List.filled(
                            5,
                            Container(
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: Text(
                                "${constrain.screenSize} based on constrain",
                                textAlign: TextAlign.center,
                              ),
                            )).toList());
                  },
                ),
              ),
              Container(
                width: 600,
                // height: 600,
                // width: MediaQuery.of(context).size.width,
                child: GridView(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(15),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: context.isExtraSmall
                            ? 1
                            : context.isSmall
                                ? 2
                                : context.isMedium
                                    ? 3
                                    : context.isLarge ? 4 : 5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15),
                    children: List.filled(
                        5,
                        Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text(
                            "${context.screenSize} based on context",
                            textAlign: TextAlign.center,
                          ),
                        )).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
