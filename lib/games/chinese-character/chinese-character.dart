import 'package:flutter/material.dart';

class ChineseCharacterPage extends StatefulWidget {
  const ChineseCharacterPage({Key? key}) : super(key: key);

  @override
  _ChineseCharacterPageState createState() => _ChineseCharacterPageState();
}

class _ChineseCharacterPageState extends State<ChineseCharacterPage> {
  int count = 5;
  List<String> chineseCharacters = ["人", "之", "出", "现", "在"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('汉字识别'),
      ),
      body: Column(
        children: [
          Text('已学会：10个，未学会：20个'),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: createChineseCharacters(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createChineseCharacters() {
    List<Widget> widgets = [];
    for (var item in chineseCharacters) {
      var widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              item,
              style: TextStyle(fontSize: 200),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    color: Colors.grey,
                  )),
            ],
          )
        ],
      );

      widgets.add(widget);
    }
    return widgets;
  }
}
