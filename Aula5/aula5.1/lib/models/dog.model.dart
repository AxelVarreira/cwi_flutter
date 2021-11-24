class DogModel {
  final String url;

  DogModel({required this.url});

  DogModel.fromJson(Map<String, dynamic> json) : url = json['message'];
}
