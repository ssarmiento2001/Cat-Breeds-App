import 'package:cat_breeds_app/services/the_cat_api_service.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/utils/routes.dart';
import 'package:cat_breeds_app/view/breed_page_view/breed_page_view.dart';
import 'package:cat_breeds_app/view/landing_page_view/landing_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final theCatApiService = TheCatApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: Routes.landingPageRoute,
      routes: {
        Routes.landingPageRoute: (context) => LandingPageView(
              apiService: theCatApiService,
              onBreedButtonPressed: (breed) {
                Navigator.pushNamed(
                  context,
                  Routes.breedPageRoute,
                  arguments: breed,
                );
              },
            ),
        Routes.breedPageRoute: (context) => BreedPageView(
              onBackButtonPressed: () {
                Navigator.pop(context);
              },
            ),
      },
    );
  }
}
