import 'package:flutter/material.dart';

class Circle extends StatelessWidget {

  final double size;
  final List<Color> colors;

  Circle({
    super.key,
    required this.size,
    required this.colors
  }):assert(size > 0, 'Size must be greater than 0'),
  assert(colors.length > 1, 'Size must be greater than 0');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: this.colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}