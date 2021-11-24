import 'dart:developer' as dev;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:user_search_exercicio/models/github_user.model.dart';
import 'package:user_search_exercicio/repository/github.repository.dart';

class GithubUserSearchPage extends StatefulWidget {
  static String route = "github-users-search-page";

  GithubUserSearchPage({Key? key}) : super(key: key);

  @override
  State<GithubUserSearchPage> createState() => _GithubUserSearchPageState();
}

class _GithubUserSearchPageState extends State<GithubUserSearchPage> {
  final repository = GithubRepository(provider: Dio());
  String? searchText;

  List<UserModel> users = [];

  Future<dynamic> onButtonPressed() async {
    users = await repository.findByName(searchText ?? '');
    dev.log(users.first.toString());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      onButtonPressed();
                      setState(() {});
                    }),
                labelText: "Olar",
              ),
              onChanged: (text) {
                setState(() {
                  searchText = text;
                });
              },
            ),
            Expanded(
              child: ListView.separated(
                itemCount: users.length,
                itemBuilder: (_, int index) => UserListItem(
                  user: users[index],
                ),
                separatorBuilder: (_, __) => const Divider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserListItem extends StatelessWidget {
  final UserModel user;

  const UserListItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _onUserDetails() {
      Navigator.pushNamed(context, 'github-user-details', arguments: user.id);
    }

    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(user.login),
          const SizedBox(width: 12),
          InkWell(
            onTap: _onUserDetails,
            child: CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
