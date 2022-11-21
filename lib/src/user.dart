import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    required this.createdAt,
    required this.firstName,
    required this.id,
    required this.lastName,
    this.imageUrl,
    this.lastSeen,
    this.metadata,
    this.updatedAt,
    this.otpChecked,
  });

  final DateTime? createdAt;
  final String firstName;
  final String id;
  final String? imageUrl;
  final String lastName;
  final DateTime? lastSeen;
  final Map<String, dynamic>? metadata;
  final DateTime? updatedAt;
  final bool? otpChecked;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
