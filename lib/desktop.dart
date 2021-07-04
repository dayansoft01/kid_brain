import 'package:flutter/material.dart';
import 'package:kid_brain/games/learn-number/learn-number.dart';
import 'package:kid_brain/games/point-to-point/point-to-point.dart';
import 'package:kid_brain/games/where-is-my-favorite/where-is-my-favorite.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('卡牌速记'),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WhereIsMyFavoritePage()));
                      },
                      child: Text('我的宝贝在哪里'),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PointToPointPage()));
                      },
                      child: Text('连线'),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LearnNumberPage()));
                      },
                      child: Text('认识数字'),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


