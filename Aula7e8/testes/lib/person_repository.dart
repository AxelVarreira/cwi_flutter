import 'dart:convert';

import 'package:http/http.dart';
import 'package:testes/person.dart';

class PersonRepository{
  final Client client = Client();

  Future<List<Person>> getPeople() async {
    final response = await client.get(Uri.parse(""));

    if(response.statusCode <=299){
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();
    }else{
      throw Exception("Error");
    }
  }
}