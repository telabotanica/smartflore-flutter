// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_UserInfoApp> {
  @override
  final int typeId = 20;

  @override
  _$_UserInfoApp read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserInfoApp(
      email: fields[0] as String?,
      token: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserInfoApp obj) {
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

_$_AuthLogin _$$_AuthLoginFromJson(Map<String, dynamic> json) => _$_AuthLogin(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_AuthLoginToJson(_$_AuthLogin instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };

_$_UserInfoApp _$$_UserInfoAppFromJson(Map<String, dynamic> json) =>
    _$_UserInfoApp(
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserInfoAppToJson(_$_UserInfoApp instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };

_$_AuthenticationResponse _$$_AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationResponse(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserInfoApp.fromJson(json['user'] as Map<String, dynamic>),
      isOk: json['isOk'] as bool?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$$_AuthenticationResponseToJson(
        _$_AuthenticationResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'isOk': instance.isOk,
      'statusCode': instance.statusCode,
    };
