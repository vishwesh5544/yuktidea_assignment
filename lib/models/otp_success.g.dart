// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpSuccess _$OtpSuccessFromJson(Map<String, dynamic> json) => OtpSuccess(
      profileStatus: json['profile_status'] as String,
      role: json['role'] as String,
      phone: json['phone'] as String,
      phoneVerifiedAt: DateTime.parse(json['phone_verified_at'] as String),
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as int,
    );

Map<String, dynamic> _$OtpSuccessToJson(OtpSuccess instance) =>
    <String, dynamic>{
      'profile_status': instance.profileStatus,
      'role': instance.role,
      'phone': instance.phone,
      'phone_verified_at': instance.phoneVerifiedAt.toIso8601String(),
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
