import 'package:json_annotation/json_annotation.dart';

part 'otp_success.g.dart';

@JsonSerializable()
class OtpSuccess {
  @JsonKey(name: "profile_status")
  final String profileStatus;
  @JsonKey(name: "role")
  final String role;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "phone_verified_at")
  final DateTime phoneVerifiedAt;
  @JsonKey(name: "access_token")
  final String accessToken;
  @JsonKey(name: "token_type")
  final String tokenType;
  @JsonKey(name: "expires_in")
  final int expiresIn;

  OtpSuccess({
    required this.profileStatus,
    required this.role,
    required this.phone,
    required this.phoneVerifiedAt,
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  OtpSuccess copyWith({
    String? profileStatus,
    String? role,
    String? phone,
    DateTime? phoneVerifiedAt,
    String? accessToken,
    String? tokenType,
    int? expiresIn,
  }) =>
      OtpSuccess(
        profileStatus: profileStatus ?? this.profileStatus,
        role: role ?? this.role,
        phone: phone ?? this.phone,
        phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
      );

  factory OtpSuccess.fromJson(Map<String, dynamic> json) => _$OtpSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$OtpSuccessToJson(this);
}
