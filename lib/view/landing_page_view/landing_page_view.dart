import 'package:cat_breeds_app/bloc/landing_page_bloc/landing_page_cubit.dart';
import 'package:cat_breeds_app/bloc/landing_page_bloc/landing_page_state.dart';
import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/services/the_cat_api_service.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/utils/failure.dart';
import 'package:cat_breeds_app/view/landing_page_view/showing_breeds_view.dart';
import 'package:cat_breeds_app/view/loading_view.dart';
import 'package:cat_breeds_app/view/showing_failure_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({
    super.key,
    required TheCatApiService apiService,
    required Function(Breed) onBreedButtonPressed,
  })  : _apiService = apiService,
        _onBreedButtonPressed = onBreedButtonPressed;

  final TheCatApiService _apiService;
  final Function(Breed) _onBreedButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final cubit = LandingPageCubit(apiService: _apiService)
      ..requestBreedsData();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          Constants.landingPageTitle.toUpperCase(),
        ),
        leading: Icon(
          Icons.pets_rounded,
          color: colorScheme.inversePrimary,
        ),
        centerTitle: true,
        titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => cubit,
          child: BlocBuilder<LandingPageCubit, LandingPageState>(
              builder: (context, state) {
            switch (state) {
              case LoadingLandingPageState _:
                {
                  return const LoadingView();
                }
              case ShowingBreedsState _:
                {
                  return ShowingBreedsView(
                    breeds: state.breedList,
                    onButtonPressed: _onBreedButtonPressed,
                  );
                }
              case ShowingFailureState _:
                {
                  return ShowingFailureView(failure: state.failure);
                }
              default:
                {
                  return ShowingFailureView(
                    failure: DefaultFailure(),
                  );
                }
            }
          }),
        ),
      ),
    );
  }
}
