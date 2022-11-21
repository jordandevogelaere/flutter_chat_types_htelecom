// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      firstName: json['firstName'] as String,
      id: json['id'] as String,
      lastName: json['lastName'] as String,
      imageUrl: json['imageUrl'] as String?,
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      otpChecked: json['otpChecked'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  val['firstName'] = instance.firstName;
  val['id'] = instance.id;
  writeNotNull('imageUrl', instance.imageUrl);
  val['lastName'] = instance.lastName;
  writeNotNull('lastSeen', instance.lastSeen?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('otpChecked', instance.otpChecked);
  return val;
}
