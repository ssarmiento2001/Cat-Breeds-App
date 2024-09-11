import 'package:cat_breeds_app/view/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key, this.message = ''});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final indicatorSize = size.height * 0.3;
    final imageSize = size.height * 0.2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.5,
          child: CustomProgressIndicator(
            indicatorSize: indicatorSize,
            imageSize: imageSize,
            color: theme.colorScheme.primary,
          ),
        ),
        Text(
          message,
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
