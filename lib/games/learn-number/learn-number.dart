import 'dart:math';

import 'package:flutter/material.dart';

class LearnNumberPage extends StatefulWidget {
  const LearnNumberPage({Key? key}) : super(key: key);

  @override
  _LearnNumberPageState createState() => _LearnNumberPageState();
}

class _LearnNumberPageState extends State<LearnNumberPage> {
  late int value;
  final _random = new Random();

  @override
  void initState() {
    this.generateValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('认识数字'),
        actions: [
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
      body: Center(
        child: InkWell(
          child: Text(
            value.toString(),
            style: TextStyle(fontSize: 200),
          ),
          onTap: restart,
        ),
      ),
    );
  }

  restart() {
    setState(() {
      generateValue();
    });
  }

  generateValue() {
    value = next(100, 1000);
  }

  int next(int min, int max) {
    return min + _random.nextInt(max - min);
  }
}
