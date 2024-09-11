import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/view/cat_image_widget.dart';
import 'package:flutter/material.dart';

class BreedPageView extends StatelessWidget {
  const BreedPageView({
    super.key,
    required this.onBackButtonPressed,
  });
  final VoidCallback onBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    final breed = ModalRoute.of(context)!.settings.arguments as Breed;
    final theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          breed.name ?? Constants.dataNotFound,
        ),
        leading: IconButton(
          onPressed: onBackButtonPressed,
          icon: const Icon(Icons.arrow_back),
          color: theme.colorScheme.onPrimary,
        ),
        centerTitle: true,
        titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0),
      ),
      body: Center(
        child: Column(
          children: [
            CatImageWidget(
              url: breed.image?.url,
            )
          ],
        ),
      ),
    );
  }
}
