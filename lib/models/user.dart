import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_app/models/list_item_model.dart';

part 'user.g.dart';

abstract class UserModel extends ListItem implements Built<UserModel,UserModelBuilder>{
  static Serializer<UserModel> get serializer => _$userModelSerializer;

  @nullable
  String get email;

  @nullable
  String get name;

  @nullable
  String get username;

  int get id;

  UserModel._();

  factory UserModel([updates(UserModelBuilder b)]) = _$UserModel;
}