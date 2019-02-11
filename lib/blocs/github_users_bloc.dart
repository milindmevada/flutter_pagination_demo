import 'dart:convert';
import 'package:github_app/models/user.dart';
import 'package:github_app/models/user_list.dart';
import 'package:http/http.dart' as http;
import 'package:github_app/resources/constants.dart';
import 'package:github_app/models/serializers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:github_app/models/list_item_model.dart';

class GitHubUsersBloc {
  bool _isLoading = false;
  int _usersSince = 0;
  final List<UserListModel> _userIds = [];
  final List<UserModel> _users = [];

  BehaviorSubject<List<ListItem>> listItems = BehaviorSubject();

  PublishSubject<Null> fetchItems = PublishSubject();

  GitHubUsersBloc() {
    fetchItems
        .doOnData((_) => _isLoading = true)
        .map((_) => _refreshList())
        .flatMap((_) => _getUserIds())
        .flatMap((_) => _toUsersModel())
        .doOnData((_) => _isLoading = false)
        .map((users) => _users.addAll(users))
        .doOnData((_) => _refreshList())
        .listen(null);

    fetchItems.add(null);
  }

  void updateSince() {
    _usersSince = _userIds.last.id;
  }

  void _refreshList() {
    final List<ListItem> list = [];
    list.addAll(_users);
    if (_isLoading) {
      list.add(ProgressLoadingItem());
    }
    listItems.add(list);
  }

  Observable<void> _getUserIds() {
    return Observable.fromFuture(getUserLists(_usersSince))
        .map((ids) => _userIds.addAll(ids));
  }

  Observable<List<UserModel>> _toUsersModel() {
    final list = _userIds
        .map((user) => getUserModel(user.id))
        .map((user) => Observable.fromFuture(user));
    return Observable.zip(list, (model) => model);
  }

  Future<List<UserListModel>> getUserLists(int initialId) async {
    final response = await http.get('${Constants.BASE_URL}');

    if (response.statusCode == 200) {
      List<dynamic> allIds = json.decode(response.body);

      return allIds
          .map<UserListModel>((map) =>
              serializers.deserializeWith(UserListModel.serializer, map))
          .toList(growable: false);
    } else {
      throw http.ClientException(response.toString());
    }
  }

  Future<UserModel> getUserModel(int userId) async {
    final response = await http.get('${Constants.BASE_URL}/$userId');

    if (response.statusCode == 200) {
      final user = serializers.deserializeWith(
          UserModel.serializer, json.decode(response.body));
      return user;
    } else {
      throw http.ClientException(response.toString());
    }
  }
}
