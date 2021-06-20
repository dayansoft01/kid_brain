import 'package:flutter/material.dart';

import 'signature-painter .dart';

class Signature extends StatefulWidget {
  SignatureState createState() => new SignatureState();
}

class SignatureState extends State<Signature> {
  List<Offset> _currentPoints = <Offset>[];
  List<List<Offset>> _points = [];

  Widget build(BuildContext context) {
    return new Stack(
      children: [
        GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            var renderObject = context.findRenderObject();
            RenderBox referenceBox;
            if (renderObject == null || !(renderObject is RenderBox)) {
              return;
            }
            referenceBox = renderObject;
            Offset localPosition =
                referenceBox.globalToLocal(details.globalPosition);

            setState(() {
              _currentPoints = [..._currentPoints]..add(localPosition);
              _points.add(_currentPoints);
              _points = [..._points];
            });
          },
          onPanEnd: (DragEndDetails details) {
            _points.add([..._currentPoints]);
            _currentPoints.clear();
          },
        ),
        CustomPaint(painter: new SignaturePainter(_points))
      ],
    );
  }
}
