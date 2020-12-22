import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'experience.freezed.dart';
part 'experience.g.dart';

@freezed
abstract class Experience with _$Experience {
  const factory Experience(
      {String id,
      String title,
      String dates,
      List<String> duties,
      String company}) = _Experience;
  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}
