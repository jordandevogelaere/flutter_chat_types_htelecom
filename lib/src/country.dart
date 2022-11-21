import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  const Country({required this.flag, required this.alphaCode, required this.name});

  final String name, flag, alphaCode;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
