import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "tel_code")
  final String telCode;
  @JsonKey(name: "timezone")
  final dynamic timezone;
  @JsonKey(name: "flag")
  final String flag;
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  Country({
    required this.id,
    required this.name,
    required this.code,
    required this.telCode,
    required this.timezone,
    required this.flag,
    required this.createdAt,
    required this.updatedAt,
  });

  Country copyWith({
    int? id,
    String? name,
    String? code,
    String? telCode,
    dynamic timezone,
    String? flag,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Country(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        telCode: telCode ?? this.telCode,
        timezone: timezone ?? this.timezone,
        flag: flag ?? this.flag,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
