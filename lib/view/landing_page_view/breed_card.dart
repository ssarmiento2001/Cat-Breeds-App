import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/data/breeds/cat_image.dart';
import 'package:flutter/material.dart';

class BreedCard extends StatelessWidget {
  const BreedCard({super.key, required this.data, this.portrait = true});

  final Breed data;
  final bool portrait;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final image = data.image;
    final bodyColor = theme.colorScheme.primary;
    final bodyTextStyle =
        theme.textTheme.headlineSmall?.copyWith(color: bodyColor);

    if (portrait) {
      return PortraitCard(
        theme: theme,
        data: data,
        mediaQuery: mediaQuery,
        image: image,
        bodyTextStyle: bodyTextStyle,
        bodyColor: bodyColor,
      );
    } else {
      return LandscapeCard(
        theme: theme,
        data: data,
        mediaQuery: mediaQuery,
        image: image,
        bodyTextStyle: bodyTextStyle,
        bodyColor: bodyColor,
      );
    }
  }
}

class LandscapeCard extends StatelessWidget {
  const LandscapeCard({
    super.key,
    required this.theme,
    required this.data,
    required this.mediaQuery,
    required this.image,
    required this.bodyTextStyle,
    required this.bodyColor,
  });

  final ThemeData theme;
  final Breed data;
  final MediaQueryData mediaQuery;
  final CatImage? image;
  final TextStyle? bodyTextStyle;
  final Color bodyColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 5.0,
        color: theme.colorScheme.primaryContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data.name ?? "Breed name",
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: mediaQuery.size.height * 0.6,
                ),
                child: image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          image!.url ?? '',
                          fit: BoxFit.fill,
                        ),
                      )
                    : const Text('Image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortraitCard extends StatelessWidget {
  const PortraitCard({
    super.key,
    required this.theme,
    required this.data,
    required this.mediaQuery,
    required this.image,
    required this.bodyTextStyle,
    required this.bodyColor,
  });

  final ThemeData theme;
  final Breed data;
  final MediaQueryData mediaQuery;
  final CatImage? image;
  final TextStyle? bodyTextStyle;
  final Color bodyColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Card(
          elevation: 5.0,
          color: theme.colorScheme.primaryContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
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
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          image!.url ?? '',
                          fit: BoxFit.fill,
                        ),
                      )
                    : const Text('Image'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      data.origin ?? 'Country of Origin',
                      style: bodyTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
