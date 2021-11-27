import 'package:flutter_test/flutter_test.dart';
import 'package:testes/person_repository.dart';

main(){
  final repository = PersonRepository();

  test("chama api", () async {
    final people = await repository.getPeople();
    print(people);
  });
}