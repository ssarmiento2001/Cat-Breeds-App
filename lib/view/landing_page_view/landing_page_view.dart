import 'package:cat_breeds_app/bloc/landing_page_bloc/landing_page_cubit.dart';
import 'package:cat_breeds_app/bloc/landing_page_bloc/landing_page_state.dart';
import 'package:cat_breeds_app/services/the_cat_api_service.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({
    super.key,
    required TheCatApiService apiService,
  }) : _apiService = apiService;

  final TheCatApiService _apiService;

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
                  return const CircularProgressIndicator();
                }
              case ShowingBreedsState _:
                {
                  return const Text("Showing breeds state");
                }
              case ShowingFailureState _:
                {
                  return const Text("Showing Failure");
                }
              default:
                {
                  return const Text("Showing Failure");
                }
            }
          }),
        ),
      ),
    );
  }
}
