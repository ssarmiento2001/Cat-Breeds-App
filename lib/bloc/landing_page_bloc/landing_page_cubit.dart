import 'package:cat_breeds_app/bloc/landing_page_bloc/landing_page_state.dart';
import 'package:cat_breeds_app/services/the_cat_api_service.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/utils/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPageCubit extends Cubit<LandingPageState> {
  LandingPageCubit({
    required TheCatApiService apiService,
  })  : _apiService = apiService,
        super(
          LoadingLandingPageState(),
        );

  final TheCatApiService _apiService;

  Future<void> requestBreedsData() async {
    switch (state) {
      case LoadingLandingPageState _:
        {
          return _requestBreedsData();
        }
      default:
        {
          return emitFailureState(
            InvalidStateFailure(),
          );
        }
    }
  }

  Future<void> emitFailureState(Failure failure) async {
    return emit(
      ShowingFailureState(failure: failure),
    );
  }

  Future<void> _requestBreedsData() async {
    final result = await _apiService.getBreeds(
      apiKey: Constants.appiKey,
    );

    if (result.$1 != null) {
      return emitFailureState(result.$1!);
    } else {
      return result.$2 != null
          ? emit(
              ShowingBreedsState(breedList: result.$2!),
            )
          : emitFailureState(
              DefaultFailure(),
            );
    }
  }
}
