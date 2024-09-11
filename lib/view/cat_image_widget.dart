import 'package:cat_breeds_app/utils/assets.dart';
import 'package:flutter/material.dart';

class CatImageWidget extends StatelessWidget {
  const CatImageWidget({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimaryContainer;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: url != null
          ? FadeInImage.assetNetwork(
              placeholderColor: color,
              placeholder: Assets.loadingImage,
              image: url!,
            )
          : Image.asset(
              Assets.placeholderImage,
              color: color,
            ),
    );
  }
}
