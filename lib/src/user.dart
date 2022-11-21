// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  User copyWith({
    DateTime? createdAt,
    String? firstName,
    String? id,
    String? imageUrl,
    String? lastName,
    DateTime? lastSeen,
    Map<String, dynamic>? metadata,
    DateTime? updatedAt,
    bool? otpChecked,
  }) {
    return User(
      createdAt: createdAt ?? this.createdAt,
      firstName: firstName ?? this.firstName,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      lastName: lastName ?? this.lastName,
      lastSeen: lastSeen ?? this.lastSeen,
      metadata: metadata ?? this.metadata,
      updatedAt: updatedAt ?? this.updatedAt,
      otpChecked: otpChecked ?? this.otpChecked,
    );
  }
}
