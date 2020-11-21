import 'package:flutter/material.dart';

class Marker extends StatelessWidget {
  final Color _color;

  Marker(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: _color,
      ),
    );
  }
}