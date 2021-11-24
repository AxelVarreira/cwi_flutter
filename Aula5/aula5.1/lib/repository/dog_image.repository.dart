import 'package:aula5/models/dog.model.dart';
import 'package:dio/dio.dart';

class DogImageRepository {
  final Dio _dio = Dio();

  Future<DogModel> getRandomDog() async {
    try {
      final response =
          await _dio.get("https://dog.ceo/api/breeds/image/random");
      return DogModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}
