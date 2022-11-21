import 'package:flutter_chat_types/flutter_chat_types.dart';

/// All possible statuses message can have.
enum Status { delivered, error, seen, sending, sent }

enum MessageType { text, unsupported }

abstract class Message {
  const Message({
    required this.author,
    this.createdAt,
    required this.id,
    this.metadata,
    this.remoteId,
    this.repliedMessage,
    this.roomId,
    this.showStatus,
    this.status,
    required this.type,
    this.updatedAt,
  });

  /// Creates a particular message from a map (decoded JSON).
  /// Type is determined by the `type` field.
  factory Message.fromJson(Map<String, dynamic> json) {
    return TextMessage.fromJson(json);
  }

  /// User who sent this message.
  final User author;

  /// Created message timestamp, in ms.
  final DateTime? createdAt;

  /// Unique ID of the message.
  final String id;

  /// Additional custom metadata or attributes related to the message.
  final Map<String, dynamic>? metadata;

  /// Unique ID of the message received from the backend.
  final String? remoteId;

  /// Message that is being replied to with the current message.
  final Message? repliedMessage;

  /// ID of the room where this message is sent.
  final String? roomId;

  /// Show status or not.
  final bool? showStatus;

  /// Message [Status].
  final Status? status;

  /// [MessageType].
  final MessageType type;

  final DateTime? updatedAt;

  /// Converts a particular message to the map representation, serializable to JSON.
  Map<String, dynamic> toJson();
}
