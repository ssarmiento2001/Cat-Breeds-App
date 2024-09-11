import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/view/landing_page_view/breed_card.dart';
import 'package:flutter/material.dart';

class ShowingBreedsView extends StatefulWidget {
  const ShowingBreedsView({
    super.key,
    required this.breeds,
  });

  final List<Breed> breeds;

  @override
  State<ShowingBreedsView> createState() => _ShowingBreedsViewState();
}

class _ShowingBreedsViewState extends State<ShowingBreedsView> {
  final textEditingController = TextEditingController();
  List<Breed>? filteredItems;

  void search(String query) {
    setState(
      () {
        if (query.isEmpty) {
          filteredItems = null;
        } else {
          filteredItems = widget.breeds
              .where((breed) =>
                  breed.name != null &&
                  (breed.name!)
                      .toLowerCase()
                      .contains(query.trim().toLowerCase()))
              .toList();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final breeds = filteredItems ?? widget.breeds;
    return OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: TextField(
              onChanged: (value) => search(value),
              controller: textEditingController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Cat breed',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary))),
            ),
          ),
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
