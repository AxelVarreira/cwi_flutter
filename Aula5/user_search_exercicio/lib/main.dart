import 'package:flutter/material.dart';
import 'package:user_search_exercicio/page/github_user_details.page.dart';
import 'package:user_search_exercicio/page/github_user_search.page.dart';

void main() {
  runApp(const GithubUserSearch());
}

class GithubUserSearch extends StatelessWidget {
  const GithubUserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: GithubUserSearchPage.route,
      routes: {
        GithubUserSearchPage.route: (_) => GithubUserSearchPage(),
        GithubUserDetailsPage.route: (context) => GithubUserDetailsPage(
            userId: ModalRoute.of(context)?.settings.arguments as int)
      },
    );
  }
}
