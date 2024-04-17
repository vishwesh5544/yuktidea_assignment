import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final dynamic name;
  @JsonKey(name: "email")
  final dynamic email;
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "phone_verified_at")
  final dynamic phoneVerifiedAt;
  @JsonKey(name: "avatar")
  final dynamic avatar;
  @JsonKey(name: "approved_at")
  final dynamic approvedAt;
  @JsonKey(name: "details_type")
  final dynamic detailsType;
  @JsonKey(name: "details_id")
  final dynamic detailsId;
  @JsonKey(name: "profile_status_id")
  final int profileStatusId;
  @JsonKey(name: "review_count")
  final int reviewCount;
  @JsonKey(name: "review_rating")
  final String reviewRating;
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.countryId,
    required this.phone,
    required this.phoneVerifiedAt,
    required this.avatar,
    required this.approvedAt,
    required this.detailsType,
    required this.detailsId,
    required this.profileStatusId,
    required this.reviewCount,
    required this.reviewRating,
    required this.createdAt,
    required this.updatedAt,
  });

  User copyWith({
    int? id,
    dynamic name,
    dynamic email,
    int? countryId,
    String? phone,
    dynamic phoneVerifiedAt,
    dynamic avatar,
    dynamic approvedAt,
    dynamic detailsType,
    dynamic detailsId,
    int? profileStatusId,
    int? reviewCount,
    String? reviewRating,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        countryId: countryId ?? this.countryId,
        phone: phone ?? this.phone,
        phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
        avatar: avatar ?? this.avatar,
        approvedAt: approvedAt ?? this.approvedAt,
        detailsType: detailsType ?? this.detailsType,
        detailsId: detailsId ?? this.detailsId,
        profileStatusId: profileStatusId ?? this.profileStatusId,
        reviewCount: reviewCount ?? this.reviewCount,
        reviewRating: reviewRating ?? this.reviewRating,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
