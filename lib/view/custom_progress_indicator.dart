import 'package:cat_breeds_app/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    required this.indicatorSize,
    required this.imageSize,
    this.color = Colors.blue,
  });

  final double indicatorSize;
  final double imageSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            height: indicatorSize,
            width: indicatorSize,
            child: CircularProgressIndicator(
              color: color,
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: imageSize,
            child: Image.asset(
              Assets.loadingImage,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
