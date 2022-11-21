import 'package:flutter_chat_types/src/channels.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registered_channel.g.dart';

@JsonSerializable()
class RegisteredChannel {
  const RegisteredChannel({required this.channel, required this.identifier, required this.countryId});

  final Channels channel;
  final String identifier;
  final String countryId;

  factory RegisteredChannel.fromJson(Map<String, dynamic> json) => _$RegisteredChannelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisteredChannelToJson(this);
}
