import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_list.g.dart';

abstract class UserListModel implements Built<UserListModel,UserListModelBuilder>{
  static Serializer<UserListModel> get serializer => _$userListModelSerializer;

  int get id;

  UserListModel._();

  factory UserListModel([updates(UserListModelBuilder b)]) = _$UserListModel;

}