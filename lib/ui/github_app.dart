import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:github_app/blocs/github_users_bloc.dart';
import 'users_list_view.dart';

class GitHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Github Users'),
        ),
        body: StatefulProvider<GitHubUsersBloc>(
            valueBuilder: (_) => GitHubUsersBloc(),
            child: UsersList())
      ),
    );
  }
}
