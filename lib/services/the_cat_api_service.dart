import 'dart:convert';
import 'dart:io';

import 'package:cat_breeds_app/data/breeds/breed.dart';
import 'package:http/http.dart' as http;

class TheCatApiService {
  Future<(Exception?, List<Breed>?)> getBreeds() async {
    final client = http.Client();
    final uri = Uri.parse('https://api.thecatapi.com/v1/breeds');

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
        return (e, null);
      }
    } else {
      return (HttpException(response.statusCode.toString()), null);
    }
  }
}
