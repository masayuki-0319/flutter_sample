import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class RandomWordsState extends State<RandomWords> {
  Widget _buildSuggestions() {
    final _wordPairs = <String>[];

    return ListView.builder(
      itemBuilder: (context, i) { // itemBuilderで一行ごとに処理が呼ばれる
        if (i.isOdd) return Divider();  // 奇数行には水平線を表示

        final index = i ~/ 2;  // ~/は結果が整数の割り算
        if (index >= _wordPairs.length) {  // 行数がリストの要素数を越えれば
          _wordPairs.addAll(["a", "b", "c", "d"].take(2));  // 単語のペアを10個追加
        }

        return _buildRow(_wordPairs[index]);
      }
    );
  }

  // 単語のペアから、形式を整えた行のWidgetを作るメソッド
  Widget _buildRow(String pair) {
    return ListTile(
      title: Text(pair),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live!人工知能"),
      ),
      body: _buildSuggestions(),
    );
  }
}

// StatefulなWidgetのクラスは、StatefulWidgetを継承
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

// 最初に表示するWidgetのクラス
class MyApp extends StatelessWidget {  // StatelessWidgetを継承
  @override
  Widget build(BuildContext context) {  //buildメソッドでUIを作成
    return MaterialApp(  // マテリアルデザインのアプリ
      title: "My Simple App",  // アプリのタイトル
      home: RandomWords()
    );
  }
}
