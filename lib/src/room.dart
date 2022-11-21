import 'package:flutter_chat_types/src/registered_channel.dart';
import 'package:flutter_chat_types/src/user.dart';
import 'package:flutter_chat_types/src/virtual_number.dart';
import 'package:json_annotation/json_annotation.dart';

import '../flutter_chat_types.dart';

part 'room.g.dart';

enum RoomType { direct, group }

@JsonSerializable(explicitToJson: true)
class Room {
  Room(
      {required this.id,
      this.imageUrl,
      this.lastMessages,
      this.metadata,
      required this.to,
      required this.type,
      this.updatedAt,
      required this.from,
      required this.user,
      required this.createdAt});

  final DateTime createdAt;
  final String id;

  /// Room's image. In case of the [RoomType.direct] - avatar of the second person,
  /// otherwise a custom image [RoomType.group].
  final String? imageUrl;

  /// List of last messages this room has received.
  final List<Message>? lastMessages;

  final Map<String, dynamic>? metadata;

  final RegisteredChannel to;

  final RoomType? type;

  final int? updatedAt;

  final User user;
  final VirtualNumber from;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
