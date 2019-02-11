// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = new _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'UserModel';

  @override
  Iterable serialize(Serializers serializers, UserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  UserModel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final String email;
  @override
  final String name;
  @override
  final String username;
  @override
  final int id;

  factory _$UserModel([void updates(UserModelBuilder b)]) =>
      (new UserModelBuilder()..update(updates)).build();

  _$UserModel._({this.email, this.name, this.username, this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UserModel', 'id');
    }
  }

  @override
  UserModel rebuild(void updates(UserModelBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => new UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        email == other.email &&
        name == other.name &&
        username == other.username &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), name.hashCode), username.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserModel')
          ..add('email', email)
          ..add('name', name)
          ..add('username', username)
          ..add('id', id))
        .toString();
  }
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  UserModelBuilder();

  UserModelBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _name = _$v.name;
      _username = _$v.username;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserModel;
  }

  @override
  void update(void updates(UserModelBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserModel build() {
    final _$result = _$v ??
        new _$UserModel._(email: email, name: name, username: username, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
