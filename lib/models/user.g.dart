// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      name: json['name'],
      email: json['email'],
      countryId: json['country_id'] as int,
      phone: json['phone'] as String,
      phoneVerifiedAt: json['phone_verified_at'],
      avatar: json['avatar'],
      approvedAt: json['approved_at'],
      detailsType: json['details_type'],
      detailsId: json['details_id'],
      profileStatusId: json['profile_status_id'] as int,
      reviewCount: json['review_count'] as int,
      reviewRating: json['review_rating'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'country_id': instance.countryId,
      'phone': instance.phone,
      'phone_verified_at': instance.phoneVerifiedAt,
      'avatar': instance.avatar,
      'approved_at': instance.approvedAt,
      'details_type': instance.detailsType,
      'details_id': instance.detailsId,
      'profile_status_id': instance.profileStatusId,
      'review_count': instance.reviewCount,
      'review_rating': instance.reviewRating,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
