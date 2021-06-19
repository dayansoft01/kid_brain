import 'dart:math';

import 'package:flutter/material.dart';

class WhereIsMyFavoritePage extends StatefulWidget {
  const WhereIsMyFavoritePage({Key? key}) : super(key: key);

  @override
  _WhereIsMyFavoritePageState createState() => _WhereIsMyFavoritePageState();
}

class _WhereIsMyFavoritePageState extends State<WhereIsMyFavoritePage> {
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow];
  List<Color> selectedColors = [];
  int favoriteColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的宝贝在哪里'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 3,
                child: Image.asset("where-is-my-favorite/bmw.jpg"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(''),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //重新开始
  restart() {
    selectedColors = [...colors];
    favoriteColorIndex = Random().nextInt(selectedColors.length);
  }

  //洗牌
  refresh() {}
}
