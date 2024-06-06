// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get datasetDescription => throw _privateConstructorUsedError;
  List<Location> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({String datasetDescription, List<Location> location});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      datasetDescription: null == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datasetDescription, List<Location> location});
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasetDescription = null,
    Object? location = null,
  }) {
    return _then(_$_WeatherModel(
      datasetDescription: null == datasetDescription
          ? _value.datasetDescription
          : datasetDescription // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel extends _WeatherModel {
  const _$_WeatherModel(
      {required this.datasetDescription,
      required final List<Location> location})
      : _location = location,
        super._();

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final String datasetDescription;
  final List<Location> _location;
  @override
  List<Location> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'WeatherModel(datasetDescription: $datasetDescription, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.datasetDescription, datasetDescription) ||
                other.datasetDescription == datasetDescription) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datasetDescription,
      const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(
      {required final String datasetDescription,
      required final List<Location> location}) = _$_WeatherModel;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  String get datasetDescription;
  @override
  List<Location> get location;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get locationName => throw _privateConstructorUsedError;
  List<WeatherElement> get weatherElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String locationName, List<WeatherElement> weatherElement});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? weatherElement = null,
  }) {
    return _then(_value.copyWith(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherElement: null == weatherElement
          ? _value.weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<WeatherElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String locationName, List<WeatherElement> weatherElement});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? weatherElement = null,
  }) {
    return _then(_$_Location(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherElement: null == weatherElement
          ? _value._weatherElement
          : weatherElement // ignore: cast_nullable_to_non_nullable
              as List<WeatherElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {required this.locationName,
      required final List<WeatherElement> weatherElement})
      : _weatherElement = weatherElement;

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String locationName;
  final List<WeatherElement> _weatherElement;
  @override
  List<WeatherElement> get weatherElement {
    if (_weatherElement is EqualUnmodifiableListView) return _weatherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherElement);
  }

  @override
  String toString() {
    return 'Location(locationName: $locationName, weatherElement: $weatherElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality()
                .equals(other._weatherElement, _weatherElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationName,
      const DeepCollectionEquality().hash(_weatherElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String locationName,
      required final List<WeatherElement> weatherElement}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get locationName;
  @override
  List<WeatherElement> get weatherElement;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) {
  return _WeatherElement.fromJson(json);
}

/// @nodoc
mixin _$WeatherElement {
  String get elementName => throw _privateConstructorUsedError;
  List<Time> get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherElementCopyWith<WeatherElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherElementCopyWith<$Res> {
  factory $WeatherElementCopyWith(
          WeatherElement value, $Res Function(WeatherElement) then) =
      _$WeatherElementCopyWithImpl<$Res, WeatherElement>;
  @useResult
  $Res call({String elementName, List<Time> time});
}

/// @nodoc
class _$WeatherElementCopyWithImpl<$Res, $Val extends WeatherElement>
    implements $WeatherElementCopyWith<$Res> {
  _$WeatherElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      elementName: null == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherElementCopyWith<$Res>
    implements $WeatherElementCopyWith<$Res> {
  factory _$$_WeatherElementCopyWith(
          _$_WeatherElement value, $Res Function(_$_WeatherElement) then) =
      __$$_WeatherElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String elementName, List<Time> time});
}

/// @nodoc
class __$$_WeatherElementCopyWithImpl<$Res>
    extends _$WeatherElementCopyWithImpl<$Res, _$_WeatherElement>
    implements _$$_WeatherElementCopyWith<$Res> {
  __$$_WeatherElementCopyWithImpl(
      _$_WeatherElement _value, $Res Function(_$_WeatherElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = null,
    Object? time = null,
  }) {
    return _then(_$_WeatherElement(
      elementName: null == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherElement implements _WeatherElement {
  const _$_WeatherElement(
      {required this.elementName, required final List<Time> time})
      : _time = time;

  factory _$_WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherElementFromJson(json);

  @override
  final String elementName;
  final List<Time> _time;
  @override
  List<Time> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  @override
  String toString() {
    return 'WeatherElement(elementName: $elementName, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherElement &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            const DeepCollectionEquality().equals(other._time, _time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, elementName, const DeepCollectionEquality().hash(_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherElementCopyWith<_$_WeatherElement> get copyWith =>
      __$$_WeatherElementCopyWithImpl<_$_WeatherElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherElementToJson(
      this,
    );
  }
}

abstract class _WeatherElement implements WeatherElement {
  const factory _WeatherElement(
      {required final String elementName,
      required final List<Time> time}) = _$_WeatherElement;

  factory _WeatherElement.fromJson(Map<String, dynamic> json) =
      _$_WeatherElement.fromJson;

  @override
  String get elementName;
  @override
  List<Time> get time;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherElementCopyWith<_$_WeatherElement> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  Parameter get parameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call({String startTime, String endTime, Parameter parameter});

  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? parameter = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parameter {
    return $ParameterCopyWith<$Res>(_value.parameter, (value) {
      return _then(_value.copyWith(parameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$_TimeCopyWith(_$_Time value, $Res Function(_$_Time) then) =
      __$$_TimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startTime, String endTime, Parameter parameter});

  @override
  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class __$$_TimeCopyWithImpl<$Res> extends _$TimeCopyWithImpl<$Res, _$_Time>
    implements _$$_TimeCopyWith<$Res> {
  __$$_TimeCopyWithImpl(_$_Time _value, $Res Function(_$_Time) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? parameter = null,
  }) {
    return _then(_$_Time(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Parameter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Time implements _Time {
  const _$_Time(
      {required this.startTime,
      required this.endTime,
      required this.parameter});

  factory _$_Time.fromJson(Map<String, dynamic> json) => _$$_TimeFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final Parameter parameter;

  @override
  String toString() {
    return 'Time(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Time &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, parameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeCopyWith<_$_Time> get copyWith =>
      __$$_TimeCopyWithImpl<_$_Time>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {required final String startTime,
      required final String endTime,
      required final Parameter parameter}) = _$_Time;

  factory _Time.fromJson(Map<String, dynamic> json) = _$_Time.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  Parameter get parameter;
  @override
  @JsonKey(ignore: true)
  _$$_TimeCopyWith<_$_Time> get copyWith => throw _privateConstructorUsedError;
}

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  String get parameterName => throw _privateConstructorUsedError;
  String? get parameterValue => throw _privateConstructorUsedError;
  String? get parameterUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call(
      {String parameterName, String? parameterValue, String? parameterUnit});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(_value.copyWith(
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: freezed == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterUnit: freezed == parameterUnit
          ? _value.parameterUnit
          : parameterUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParameterCopyWith<$Res> implements $ParameterCopyWith<$Res> {
  factory _$$_ParameterCopyWith(
          _$_Parameter value, $Res Function(_$_Parameter) then) =
      __$$_ParameterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String parameterName, String? parameterValue, String? parameterUnit});
}

/// @nodoc
class __$$_ParameterCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$_Parameter>
    implements _$$_ParameterCopyWith<$Res> {
  __$$_ParameterCopyWithImpl(
      _$_Parameter _value, $Res Function(_$_Parameter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(_$_Parameter(
      parameterName: null == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as String,
      parameterValue: freezed == parameterValue
          ? _value.parameterValue
          : parameterValue // ignore: cast_nullable_to_non_nullable
              as String?,
      parameterUnit: freezed == parameterUnit
          ? _value.parameterUnit
          : parameterUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parameter implements _Parameter {
  const _$_Parameter(
      {required this.parameterName, this.parameterValue, this.parameterUnit});

  factory _$_Parameter.fromJson(Map<String, dynamic> json) =>
      _$$_ParameterFromJson(json);

  @override
  final String parameterName;
  @override
  final String? parameterValue;
  @override
  final String? parameterUnit;

  @override
  String toString() {
    return 'Parameter(parameterName: $parameterName, parameterValue: $parameterValue, parameterUnit: $parameterUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parameter &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.parameterValue, parameterValue) ||
                other.parameterValue == parameterValue) &&
            (identical(other.parameterUnit, parameterUnit) ||
                other.parameterUnit == parameterUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, parameterName, parameterValue, parameterUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParameterCopyWith<_$_Parameter> get copyWith =>
      __$$_ParameterCopyWithImpl<_$_Parameter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParameterToJson(
      this,
    );
  }
}

abstract class _Parameter implements Parameter {
  const factory _Parameter(
      {required final String parameterName,
      final String? parameterValue,
      final String? parameterUnit}) = _$_Parameter;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$_Parameter.fromJson;

  @override
  String get parameterName;
  @override
  String? get parameterValue;
  @override
  String? get parameterUnit;
  @override
  @JsonKey(ignore: true)
  _$$_ParameterCopyWith<_$_Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}
