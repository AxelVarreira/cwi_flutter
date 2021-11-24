import 'package:dio/dio.dart';
import 'package:user_search/repository/github.repository.dart';

void main(List<String> arguments) async {
  final Dio _dio = Dio();

  try {
    final repository = GithubRepository(provider: _dio);

    final users = await repository.findByName("Axel");
    print(users.first.toString());
  } catch (e) {}
}
