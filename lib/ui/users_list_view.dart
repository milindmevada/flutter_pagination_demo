import 'package:flutter/material.dart';
import 'package:github_app/blocs/github_users_bloc.dart';
import 'package:github_app/models/list_item_model.dart';
import 'package:github_app/models/user.dart';
import 'package:provider/provider.dart';

import 'profile/user_profile.dart';

class UsersList extends StatefulWidget {
  @override
  UsersListState createState() {
    return new UsersListState();
  }
}

class UsersListState extends State<UsersList> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(_scrollListener);
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Provider.of<GitHubUsersBloc>(context).listItems,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        final List<ListItem> items = snapshot.data;

        if (items == null) {
          return Center(
            child: Text('Hello'),
          );
        }

        return ListView.builder(
            controller: _controller,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final ListItem item = items[index];

              if (item is ProgressLoadingItem) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (item is UserModel) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserProfile(item)),
                    );
                  },
                  child: Card(
                    elevation: 0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://homepages.cae.wisc.edu/~ece533/images/girl.png'),
                      ),
                      title: Text(item.name),
                      subtitle: Row(
                        children: <Widget>[
                          Text(item.email),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            });
      },
    );
  }

  void _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      Provider.of<GitHubUsersBloc>(context).updateSince();
      Provider.of<GitHubUsersBloc>(context).fetchItems.add(null);
    }
  }
}
