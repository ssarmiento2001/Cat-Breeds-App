import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/utils/failure.dart';

abstract class LandingPageState {}

class LoadingLandingPageState extends LandingPageState {}

class ShowingBreedsState extends LandingPageState {
  final List<Breed> breedList;
  ShowingBreedsState({required this.breedList});
}

class ShowingFailureState extends LandingPageState {
  final Failure failure;
  ShowingFailureState({required this.failure});
}
