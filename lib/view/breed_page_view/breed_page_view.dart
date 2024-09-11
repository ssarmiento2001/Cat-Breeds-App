import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/view/cat_image_widget.dart';
import 'package:cat_breeds_app/view/rated_property_widget.dart';
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
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final textStyle = theme.textTheme.bodyLarge;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          breed.name ?? Constants.dataNotFound,
        ),
        leading: IconButton(
          onPressed: onBackButtonPressed,
          icon: const Icon(Icons.arrow_back),
          color: colorScheme.onPrimary,
        ),
        centerTitle: true,
        titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0),
      ),
      body: Center(
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return BreedInformationPortrait(
              mediaQuery: mediaQuery,
              breed: breed,
              colorScheme: colorScheme,
              textStyle: textStyle,
            );
          } else {
            return BreedInformationLandscape(
              mediaQuery: mediaQuery,
              breed: breed,
              colorScheme: colorScheme,
              textStyle: textStyle,
            );
          }
        }),
      ),
    );
  }
}

class BreedInformationLandscape extends StatelessWidget {
  const BreedInformationLandscape({
    super.key,
    required this.mediaQuery,
    required this.breed,
    required this.colorScheme,
    this.textStyle,
  });

  final MediaQueryData mediaQuery;
  final Breed breed;
  final ColorScheme colorScheme;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: mediaQuery.size.width * 0.5,
            ),
            child: CatImageWidget(url: breed.image?.url),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Text(
                  breed.description ?? Constants.dataNotFound,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.origin}: ${breed.origin}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.temperament}: ${breed.temperament}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.lifeSpan}: ${breed.life_span} ${Constants.years}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Ratings(
                    textStyle: textStyle,
                    breed: breed,
                    colorScheme: colorScheme),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BreedInformationPortrait extends StatelessWidget {
  const BreedInformationPortrait({
    super.key,
    required this.mediaQuery,
    required this.breed,
    required this.colorScheme,
    this.textStyle,
  });

  final MediaQueryData mediaQuery;
  final Breed breed;
  final ColorScheme colorScheme;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: mediaQuery.size.height * 0.5,
            ),
            child: CatImageWidget(url: breed.image?.url),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Text(
                  breed.description ?? Constants.dataNotFound,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.origin}: ${breed.origin}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.temperament}: ${breed.temperament}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Text(
                  '${Constants.lifeSpan}: ${breed.life_span} ${Constants.years}',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const Divider(),
                Ratings(
                    textStyle: textStyle,
                    breed: breed,
                    colorScheme: colorScheme),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Ratings extends StatelessWidget {
  const Ratings({
    super.key,
    required this.textStyle,
    required this.breed,
    required this.colorScheme,
  });

  final TextStyle? textStyle;
  final Breed breed;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.intelligence}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.intelligence ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.adaptability}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.adaptability ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.affection}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.affection_level ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.childFriendly}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.child_friendly ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.dogFriendly}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.dog_friendly ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.energyLevel}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.energy_level ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.grooming}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.grooming ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.healthIssues}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.health_issues ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.sheddingLevel}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.shedding_level ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.socialNeeds}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.social_needs ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Constants.strangerFriendly}: ',
                style: textStyle,
              ),
              RatedPropertyWidget(
                icon: Icons.pets,
                rate: breed.stranger_friendly ?? 0,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
