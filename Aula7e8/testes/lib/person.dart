class Person {
  final int age;
  final String name;
  final int weight;
  final int height;

  Person({required this.age, required this.name, required this.weight, required this.height});

  double get imc{
    var result = weight / (height * height);
    result = result *100;
    return result.roundToDouble() / 100;
  }

  Map<String, dynamic> toMap() {
    return {
      'age': this.age,
      'name': this.name,
      'weight': this.weight,
      'height': this.height,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      age: int.parse( map['age']),
      name: map['name'] as String,
      weight: map['weight'] as int,
      height: map['height'] as int,
    );
  }
}
