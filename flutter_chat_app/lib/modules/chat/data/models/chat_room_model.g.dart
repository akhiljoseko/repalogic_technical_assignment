// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomModel _$ChatRoomModelFromJson(Map<String, dynamic> json) =>
    _ChatRoomModel(
      id: json['id'] as String,
      name: json['name'] as String,
      participantIds: (json['participantIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ChatRoomModelToJson(_ChatRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'participantIds': instance.participantIds,
      'createdAt': instance.createdAt.toIso8601String(),
    };
