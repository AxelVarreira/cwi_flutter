import 'package:dio/dio.dart';
import 'package:user_search/models/user.model.dart';

class GithubRepository {
  final Dio provider;

  GithubRepository({required this.provider});

  Future<List<UserModel>> findByName(String name) async {
    try {
      final response =
          await provider.get("https://api.github.com/search/users?q=$name");

      return (response.data['items'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception('Erro ao procurar usuario');
    }
  }
}
