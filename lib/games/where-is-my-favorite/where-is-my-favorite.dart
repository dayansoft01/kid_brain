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
  late Color favoriteColor;
  bool favoriteVisible = true;

  _WhereIsMyFavoritePageState() {
    restart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的宝贝在哪里'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                selectedColors.shuffle();
              });
            },
            child: Text(
              '洗牌',
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                this.restart();
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: getCards(),
        ),
      ),
    );
  }

  //重新开始
  restart() {
    favoriteVisible = true;
    selectedColors = [...colors];
    favoriteColor = selectedColors[Random().nextInt(selectedColors.length)];
  }

  getCards() {
    List<Widget> cards = [];
    for (var color in selectedColors) {
      if (cards.length != 0) {
        cards.add(SizedBox(width: 10));
      }
      if (favoriteVisible && color == favoriteColor) {
        cards.add(
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 3,
              child: GestureDetector(
                child: Image.asset("where-is-my-favorite/bmw.jpg"),
                onTap: () {
                  setState(() {
                    favoriteVisible = !favoriteVisible;
                  });
                },
              ),
            ),
          ),
        );
      } else {
        cards.add(
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 3,
              child: ElevatedButton(
                onPressed: () {
                  if (color == favoriteColor) {
                    setState(() {
                      favoriteVisible = !favoriteVisible;
                    });
                  }
                },
                child: Text(''),
                style: ElevatedButton.styleFrom(primary: color),
              ),
            ),
          ),
        );
      }
    }
    return cards;
  }
}
