import 'dart:math';

import 'package:flutter/material.dart';

class RatedPropertyWidget extends StatelessWidget {
  const RatedPropertyWidget({
    super.key,
    required this.icon,
    required this.rate,
    required this.color,
    this.maxRate = 5,
    this.minRate = 0,
  });

  final int rate;
  final Color color;
  final IconData icon;
  final int maxRate;
  final int minRate;

  @override
  Widget build(BuildContext context) {
    final level = min(max(minRate, rate), maxRate);
    return Row(
      children: List.filled(
        level,
        Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
