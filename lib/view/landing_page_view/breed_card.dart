import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:flutter/material.dart';

class BreedCard extends StatelessWidget {
  const BreedCard({super.key, required this.data});

  final Breed data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final image = data.image;
    final bodyColor = theme.colorScheme.onPrimaryContainer;
    final bodyTextStyle = theme.textTheme.bodyLarge?.copyWith(color: bodyColor);

    return SizedBox(
      child: Card(
        elevation: 5.0,
        color: theme.colorScheme.primaryContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data.name ?? "Breed name",
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: mediaQuery.size.height * 0.8,
                maxWidth: mediaQuery.size.width * 0.8,
              ),
              child: image != null
                  ? Image.network(
                      image.url ?? '',
                    )
                  : const Text('Image'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data.origin ?? 'Country of Origin',
                    style: bodyTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        'Intelligence: ',
                        style: bodyTextStyle,
                      ),
                      Row(
                        children: List.filled(
                          data.intelligence ?? 0,
                          Icon(
                            Icons.pets,
                            color: bodyColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
