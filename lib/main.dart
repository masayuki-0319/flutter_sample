import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Simple App"),
            ),
            body: Stack(  // 重ねて表示
              children: <Widget>[
                Container(
                    width: 800,
                    height: 600,
                    color:Colors.red
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
              ],
            )
        )
    );
  }
}
