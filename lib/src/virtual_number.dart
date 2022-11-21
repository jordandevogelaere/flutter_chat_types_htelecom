import 'package:flutter_chat_types/src/channels.dart';
import 'package:json_annotation/json_annotation.dart';

part 'virtual_number.g.dart';

@JsonSerializable()
class VirtualNumber {
  const VirtualNumber(
      {required this.createdAt,
      required this.userId,
      required this.number,
      required this.channel,
      required this.countryId});

  final DateTime createdAt;
  final String userId;
  final String number;
  final Channels channel;
  final String countryId;

  factory VirtualNumber.fromJson(Map<String, dynamic> json) => _$VirtualNumberFromJson(json);
  Map<String, dynamic> toJson() => _$VirtualNumberToJson(this);
}
