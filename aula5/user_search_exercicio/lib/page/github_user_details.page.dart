import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GithubUserDetailsPage extends StatefulWidget {
  static String route = "github-user-details";

  final Dio _dio = Dio();

  final int userId;
  GithubUserDetailsPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<GithubUserDetailsPage> createState() => _GithubUserDetailsPageState();
}

class _GithubUserDetailsPageState extends State<GithubUserDetailsPage> {
  // Utilizar o initState()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
