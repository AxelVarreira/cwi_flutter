class userDetailsModel {
  final int id;
  final String name;
  final String url;
  final String avatarUrl;
  final int followers;
  final int following;
  final String createdAt;
  final String bio;

  userDetailsModel(
      {required this.id,
      required this.name,
      required this.url,
      required this.avatarUrl,
      required this.followers,
      required this.following,
      required this.createdAt,
      required this.bio});

  userDetailsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['login'],
        url = json['url'],
        avatarUrl = json['avatar_url'],
        followers = json['followers'],
        following = json['following'],
        createdAt = json['created_at'],
        bio = json['bio'];

  @override
  String toString() {
    return 'UserModel{id: $id, login: $name, url: $url, avatarUrl: $avatarUrl}';
  }
}
