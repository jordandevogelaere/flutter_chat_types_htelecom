// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisteredChannel _$RegisteredChannelFromJson(Map<String, dynamic> json) =>
    RegisteredChannel(
      channel: $enumDecode(_$ChannelsEnumMap, json['channel']),
      identifier: json['identifier'] as String,
      countryId: json['countryId'] as String,
    );

Map<String, dynamic> _$RegisteredChannelToJson(RegisteredChannel instance) =>
    <String, dynamic>{
      'channel': _$ChannelsEnumMap[instance.channel]!,
      'identifier': instance.identifier,
      'countryId': instance.countryId,
    };

const _$ChannelsEnumMap = {
  Channels.sms: 'sms',
  Channels.whatsapp: 'whatsapp',
};
