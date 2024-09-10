import 'dart:convert';

import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:cat_breeds_app/utils/failure.dart';
import 'package:http/http.dart' as http;

class TheCatApiService {
  Future<(Failure?, List<Breed>?)> getBreeds({String? apiKey}) async {
    final client = http.Client();
    final String path =
        'https://api.thecatapi.com/v1/breeds${apiKey != null ? '?api_key=$apiKey' : ''}';

    final uri = Uri.parse(path);

    final response = await client.get(uri);

    if (response.statusCode == 200) {
      try {
        final json = const Utf8Decoder().convert(response.bodyBytes);
        final mapList = jsonDecode(json) as List<dynamic>;
        final breeds = mapList
            .map((map) => Breed.fromMap(map as Map<String, dynamic>))
            .toList();
        return (null, breeds);
      } on Exception catch (e) {
        return (ExceptionCaughtFailure(exception: e), null);
      }
    } else {
      return (
        HTTPRequestFailure(message: response.statusCode.toString()),
        null
      );
    }
  }
}
