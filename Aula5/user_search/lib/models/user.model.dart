class UserModel {
  final int id;
  final String login;
  final String url;
  final String avatarUrl;

  UserModel({
    required this.id,
    required this.login,
    required this.url,
    required this.avatarUrl,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        login = json['login'],
        url = json['url'],
        avatarUrl = json['avatar_url'];

  @override
  String toString() {
    return 'UserModel{id: $id, login: $login, url: $url, avatarUrl: $avatarUrl}';
  }
}
