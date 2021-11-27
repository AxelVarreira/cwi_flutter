import 'package:flutter_test/flutter_test.dart';
import 'package:testes/person.dart';

main(){
  final person = Person(age: 22, name: "Axel", height: 170, weight: 75);

  test("Verifica a idade da pessoa, que deve ser 22", () {
    expect(person.age, 22);
  });

  test("deve calcular o imc da pessoa", (){
    expect(person.imc, 25.95);
  });
}
