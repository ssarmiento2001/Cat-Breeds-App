import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/data/breeds/cat_image.dart';
import 'package:cat_breeds_app/utils/assets.dart';
import 'package:cat_breeds_app/utils/constants.dart';
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
    return Stack(
      children: [
        Card(
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
                      data.name ?? Constants.dataNotFound,
                      style: theme.textTheme.headlineLarge?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${Constants.country}: ${data.origin ?? Constants.dataNotFound}',
                      style: bodyTextStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          '${Constants.intelligence}: ',
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
                  child: CatImageWidget(url: image?.url),
                ),
              ),
            ],
          ),
        ),
        InformationButton(theme: theme),
      ],
    );
  }
}

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
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Card(
            elevation: 5.0,
            color: theme.colorScheme.primaryContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: mediaQuery.size.width * 0.5,
                  child: Text(
                    data.name ?? Constants.dataNotFound,
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: mediaQuery.size.height * 0.8,
                    maxWidth: mediaQuery.size.width * 0.8,
                  ),
                  child: CatImageWidget(url: image?.url),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${Constants.country}: ${data.origin ?? Constants.dataNotFound}',
                        style: bodyTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Constants.intelligence}: ',
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
          InformationButton(theme: theme),
        ],
      ),
    );
  }
}

class InformationButton extends StatelessWidget {
  const InformationButton({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: theme.colorScheme.primary,
        child: Icon(
          Icons.info_outline,
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
