// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experience _$_$_ExperienceFromJson(Map<String, dynamic> json) {
  return _$_Experience(
    id: json['id'] as String,
    title: json['title'] as String,
    dates: json['dates'] as String,
    duties: (json['duties'] as List)?.map((e) => e as String)?.toList(),
    company: json['company'] as String,
  );
}

Map<String, dynamic> _$_$_ExperienceToJson(_$_Experience instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dates': instance.dates,
      'duties': instance.duties,
      'company': instance.company,
    };
