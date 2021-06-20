import 'package:flutter/material.dart';

import 'signature.dart';

class PointToPointPage extends StatefulWidget {
  const PointToPointPage({Key? key}) : super(key: key);

  @override
  _PointToPointPageState createState() => _PointToPointPageState();
}

class _PointToPointPageState extends State<PointToPointPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Signature());
  }
}
