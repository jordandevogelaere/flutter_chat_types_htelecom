// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VirtualNumber _$VirtualNumberFromJson(Map<String, dynamic> json) =>
    VirtualNumber(
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      number: json['number'] as String,
      channel: $enumDecode(_$ChannelsEnumMap, json['channel']),
      countryId: json['countryId'] as String,
    );

Map<String, dynamic> _$VirtualNumberToJson(VirtualNumber instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
      'number': instance.number,
      'channel': _$ChannelsEnumMap[instance.channel]!,
      'countryId': instance.countryId,
    };

const _$ChannelsEnumMap = {
  Channels.sms: 'sms',
  Channels.whatsapp: 'whatsapp',
};
