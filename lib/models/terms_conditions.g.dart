// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_conditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermsConditions _$TermsConditionsFromJson(Map<String, dynamic> json) =>
    TermsConditions(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      enabled: json['enabled'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TermsConditionsToJson(TermsConditions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'published_at': instance.publishedAt.toIso8601String(),
      'enabled': instance.enabled,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
