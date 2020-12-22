// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return _Experience.fromJson(json);
}

/// @nodoc
class _$ExperienceTearOff {
  const _$ExperienceTearOff();

// ignore: unused_element
  _Experience call(
      {String id,
      String title,
      String dates,
      List<String> duties,
      String company}) {
    return _Experience(
      id: id,
      title: title,
      dates: dates,
      duties: duties,
      company: company,
    );
  }

// ignore: unused_element
  Experience fromJson(Map<String, Object> json) {
    return Experience.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Experience = _$ExperienceTearOff();

/// @nodoc
mixin _$Experience {
  String get id;
  String get title;
  String get dates;
  List<String> get duties;
  String get company;

  Map<String, dynamic> toJson();
  $ExperienceCopyWith<Experience> get copyWith;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String dates,
      List<String> duties,
      String company});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object dates = freezed,
    Object duties = freezed,
    Object company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      dates: dates == freezed ? _value.dates : dates as String,
      duties: duties == freezed ? _value.duties : duties as List<String>,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(
          _Experience value, $Res Function(_Experience) then) =
      __$ExperienceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String dates,
      List<String> duties,
      String company});
}

/// @nodoc
class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res>
    implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(
      _Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object dates = freezed,
    Object duties = freezed,
    Object company = freezed,
  }) {
    return _then(_Experience(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      dates: dates == freezed ? _value.dates : dates as String,
      duties: duties == freezed ? _value.duties : duties as List<String>,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Experience with DiagnosticableTreeMixin implements _Experience {
  const _$_Experience(
      {this.id, this.title, this.dates, this.duties, this.company});

  factory _$_Experience.fromJson(Map<String, dynamic> json) =>
      _$_$_ExperienceFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String dates;
  @override
  final List<String> duties;
  @override
  final String company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Experience(id: $id, title: $title, dates: $dates, duties: $duties, company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Experience'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('dates', dates))
      ..add(DiagnosticsProperty('duties', duties))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Experience &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.dates, dates) ||
                const DeepCollectionEquality().equals(other.dates, dates)) &&
            (identical(other.duties, duties) ||
                const DeepCollectionEquality().equals(other.duties, duties)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(dates) ^
      const DeepCollectionEquality().hash(duties) ^
      const DeepCollectionEquality().hash(company);

  @override
  _$ExperienceCopyWith<_Experience> get copyWith =>
      __$ExperienceCopyWithImpl<_Experience>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExperienceToJson(this);
  }
}

abstract class _Experience implements Experience {
  const factory _Experience(
      {String id,
      String title,
      String dates,
      List<String> duties,
      String company}) = _$_Experience;

  factory _Experience.fromJson(Map<String, dynamic> json) =
      _$_Experience.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get dates;
  @override
  List<String> get duties;
  @override
  String get company;
  @override
  _$ExperienceCopyWith<_Experience> get copyWith;
}
