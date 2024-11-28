// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$UserInfoAppImpl> {
  @override
  final int typeId = 20;

  @override
  _$UserInfoAppImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserInfoAppImpl(
      email: fields[0] as String?,
      token: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserInfoAppImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthLoginImpl _$$AuthLoginImplFromJson(Map<String, dynamic> json) =>
    _$AuthLoginImpl(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthLoginImplToJson(_$AuthLoginImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };

_$AuthenticationResponseImpl _$$AuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserInfoApp.fromJson(json['user'] as Map<String, dynamic>),
      isOk: json['isOk'] as bool?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuthenticationResponseImplToJson(
        _$AuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'isOk': instance.isOk,
      'statusCode': instance.statusCode,
    };

_$UserInfoAppImpl _$$UserInfoAppImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoAppImpl(
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserInfoAppImplToJson(_$UserInfoAppImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };

_$RemoteUserImpl _$$RemoteUserImplFromJson(Map<String, dynamic> json) =>
    _$RemoteUserImpl(
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      trails: (json['trails'] as List<dynamic>?)
          ?.map((e) => Trail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RemoteUserImplToJson(_$RemoteUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'trails': instance.trails,
    };
