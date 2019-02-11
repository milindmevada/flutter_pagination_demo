// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserListModel> _$userListModelSerializer =
    new _$UserListModelSerializer();

class _$UserListModelSerializer implements StructuredSerializer<UserListModel> {
  @override
  final Iterable<Type> types = const [UserListModel, _$UserListModel];
  @override
  final String wireName = 'UserListModel';

  @override
  Iterable serialize(Serializers serializers, UserListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UserListModel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserListModel extends UserListModel {
  @override
  final int id;

  factory _$UserListModel([void updates(UserListModelBuilder b)]) =>
      (new UserListModelBuilder()..update(updates)).build();

  _$UserListModel._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UserListModel', 'id');
    }
  }

  @override
  UserListModel rebuild(void updates(UserListModelBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListModelBuilder toBuilder() => new UserListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListModel && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserListModel')..add('id', id))
        .toString();
  }
}

class UserListModelBuilder
    implements Builder<UserListModel, UserListModelBuilder> {
  _$UserListModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  UserListModelBuilder();

  UserListModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserListModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserListModel;
  }

  @override
  void update(void updates(UserListModelBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserListModel build() {
    final _$result = _$v ?? new _$UserListModel._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
