import 'package:json_annotation/json_annotation.dart';

part 'terms_conditions.g.dart';

@JsonSerializable()
class TermsConditions {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "content")
  final String content;
  @JsonKey(name: "published_at")
  final DateTime publishedAt;
  @JsonKey(name: "enabled")
  final int enabled;
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  TermsConditions({
    required this.id,
    required this.title,
    required this.content,
    required this.publishedAt,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  TermsConditions copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? publishedAt,
    int? enabled,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      TermsConditions(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        publishedAt: publishedAt ?? this.publishedAt,
        enabled: enabled ?? this.enabled,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory TermsConditions.fromJson(Map<String, dynamic> json) => _$TermsConditionsFromJson(json);

  Map<String, dynamic> toJson() => _$TermsConditionsToJson(this);
}
