// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextMessage _$TextMessageFromJson(Map<String, dynamic> json) => TextMessage(
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      previewData: json['previewData'] == null
          ? null
          : PreviewData.fromJson(json['previewData'] as Map<String, dynamic>),
      remoteId: json['remoteId'] as String?,
      repliedMessage: json['repliedMessage'] == null
          ? null
          : Message.fromJson(json['repliedMessage'] as Map<String, dynamic>),
      roomId: json['roomId'] as String,
      showStatus: json['showStatus'] as bool?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      text: json['text'] as String,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TextMessageToJson(TextMessage instance) =>
    <String, dynamic>{
      'author': instance.author,
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'metadata': instance.metadata,
      'remoteId': instance.remoteId,
      'repliedMessage': instance.repliedMessage,
      'roomId': instance.roomId,
      'showStatus': instance.showStatus,
      'status': _$StatusEnumMap[instance.status],
      'type': _$MessageTypeEnumMap[instance.type]!,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'previewData': instance.previewData,
      'text': instance.text,
    };

const _$StatusEnumMap = {
  Status.delivered: 'delivered',
  Status.error: 'error',
  Status.seen: 'seen',
  Status.sending: 'sending',
  Status.sent: 'sent',
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.unsupported: 'unsupported',
};
