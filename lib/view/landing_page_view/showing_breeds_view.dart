import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/view/landing_page_view/breed_card.dart';
import 'package:flutter/material.dart';

class ShowingBreedsView extends StatelessWidget {
  const ShowingBreedsView({
    super.key,
    required this.breeds,
  });

  final List<Breed> breeds;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: breeds.length,
              itemBuilder: (context, index) => BreedCard(
                data: breeds[index],
                portrait: orientation == Orientation.portrait,
              ),
            ),
          )
        ],
      ),
    );
  }
}
