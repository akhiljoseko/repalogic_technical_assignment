// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      id: json['id'] as String,
      content: json['content'] as String,
      senderId: json['senderId'] as String,
      senderName: json['senderName'] as String,
      roomId: json['roomId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'roomId': instance.roomId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
