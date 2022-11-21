// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {String? userName,
      String? userEmail,
      String? dateOfBirth,
      List<Gender>? gender,
      String? adhaarNo,
      String? bloodGroup,
      List<States>? state,
      String? address,
      List<UserImages>? userImages}) {
    return _UserModel(
      userName: userName,
      userEmail: userEmail,
      dateOfBirth: dateOfBirth,
      gender: gender,
      adhaarNo: adhaarNo,
      bloodGroup: bloodGroup,
      state: state,
      address: address,
      userImages: userImages,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String? get userName => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  List<Gender>? get gender => throw _privateConstructorUsedError;
  String? get adhaarNo => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;
  List<States>? get state => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<UserImages>? get userImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {String? userName,
      String? userEmail,
      String? dateOfBirth,
      List<Gender>? gender,
      String? adhaarNo,
      String? bloodGroup,
      List<States>? state,
      String? address,
      List<UserImages>? userImages});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? adhaarNo = freezed,
    Object? bloodGroup = freezed,
    Object? state = freezed,
    Object? address = freezed,
    Object? userImages = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      adhaarNo: adhaarNo == freezed
          ? _value.adhaarNo
          : adhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as List<States>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userImages: userImages == freezed
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<UserImages>?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userName,
      String? userEmail,
      String? dateOfBirth,
      List<Gender>? gender,
      String? adhaarNo,
      String? bloodGroup,
      List<States>? state,
      String? address,
      List<UserImages>? userImages});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? adhaarNo = freezed,
    Object? bloodGroup = freezed,
    Object? state = freezed,
    Object? address = freezed,
    Object? userImages = freezed,
  }) {
    return _then(_UserModel(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      adhaarNo: adhaarNo == freezed
          ? _value.adhaarNo
          : adhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as List<States>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userImages: userImages == freezed
          ? _value.userImages
          : userImages // ignore: cast_nullable_to_non_nullable
              as List<UserImages>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.userName,
      this.userEmail,
      this.dateOfBirth,
      this.gender,
      this.adhaarNo,
      this.bloodGroup,
      this.state,
      this.address,
      this.userImages});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String? userName;
  @override
  final String? userEmail;
  @override
  final String? dateOfBirth;
  @override
  final List<Gender>? gender;
  @override
  final String? adhaarNo;
  @override
  final String? bloodGroup;
  @override
  final List<States>? state;
  @override
  final String? address;
  @override
  final List<UserImages>? userImages;

  @override
  String toString() {
    return 'UserModel(userName: $userName, userEmail: $userEmail, dateOfBirth: $dateOfBirth, gender: $gender, adhaarNo: $adhaarNo, bloodGroup: $bloodGroup, state: $state, address: $address, userImages: $userImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userEmail, userEmail) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.adhaarNo, adhaarNo) &&
            const DeepCollectionEquality()
                .equals(other.bloodGroup, bloodGroup) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.userImages, userImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userEmail),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(adhaarNo),
      const DeepCollectionEquality().hash(bloodGroup),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(userImages));

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {String? userName,
      String? userEmail,
      String? dateOfBirth,
      List<Gender>? gender,
      String? adhaarNo,
      String? bloodGroup,
      List<States>? state,
      String? address,
      List<UserImages>? userImages}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String? get userName;
  @override
  String? get userEmail;
  @override
  String? get dateOfBirth;
  @override
  List<Gender>? get gender;
  @override
  String? get adhaarNo;
  @override
  String? get bloodGroup;
  @override
  List<States>? get state;
  @override
  String? get address;
  @override
  List<UserImages>? get userImages;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Gender _$GenderFromJson(Map<String, dynamic> json) {
  return _Gender.fromJson(json);
}

/// @nodoc
class _$GenderTearOff {
  const _$GenderTearOff();

  _Gender call({String? description}) {
    return _Gender(
      description: description,
    );
  }

  Gender fromJson(Map<String, Object?> json) {
    return Gender.fromJson(json);
  }
}

/// @nodoc
const $Gender = _$GenderTearOff();

/// @nodoc
mixin _$Gender {
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GenderCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory _$GenderCopyWith(_Gender value, $Res Function(_Gender) then) =
      __$GenderCopyWithImpl<$Res>;
  @override
  $Res call({String? description});
}

/// @nodoc
class __$GenderCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements _$GenderCopyWith<$Res> {
  __$GenderCopyWithImpl(_Gender _value, $Res Function(_Gender) _then)
      : super(_value, (v) => _then(v as _Gender));

  @override
  _Gender get _value => super._value as _Gender;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_Gender(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gender implements _Gender {
  const _$_Gender({this.description});

  factory _$_Gender.fromJson(Map<String, dynamic> json) =>
      _$$_GenderFromJson(json);

  @override
  final String? description;

  @override
  String toString() {
    return 'Gender(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Gender &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$GenderCopyWith<_Gender> get copyWith =>
      __$GenderCopyWithImpl<_Gender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderToJson(this);
  }
}

abstract class _Gender implements Gender {
  const factory _Gender({String? description}) = _$_Gender;

  factory _Gender.fromJson(Map<String, dynamic> json) = _$_Gender.fromJson;

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$GenderCopyWith<_Gender> get copyWith => throw _privateConstructorUsedError;
}

States _$StatesFromJson(Map<String, dynamic> json) {
  return _States.fromJson(json);
}

/// @nodoc
class _$StatesTearOff {
  const _$StatesTearOff();

  _States call({String? stateName}) {
    return _States(
      stateName: stateName,
    );
  }

  States fromJson(Map<String, Object?> json) {
    return States.fromJson(json);
  }
}

/// @nodoc
const $States = _$StatesTearOff();

/// @nodoc
mixin _$States {
  String? get stateName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatesCopyWith<States> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatesCopyWith<$Res> {
  factory $StatesCopyWith(States value, $Res Function(States) then) =
      _$StatesCopyWithImpl<$Res>;
  $Res call({String? stateName});
}

/// @nodoc
class _$StatesCopyWithImpl<$Res> implements $StatesCopyWith<$Res> {
  _$StatesCopyWithImpl(this._value, this._then);

  final States _value;
  // ignore: unused_field
  final $Res Function(States) _then;

  @override
  $Res call({
    Object? stateName = freezed,
  }) {
    return _then(_value.copyWith(
      stateName: stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StatesCopyWith<$Res> implements $StatesCopyWith<$Res> {
  factory _$StatesCopyWith(_States value, $Res Function(_States) then) =
      __$StatesCopyWithImpl<$Res>;
  @override
  $Res call({String? stateName});
}

/// @nodoc
class __$StatesCopyWithImpl<$Res> extends _$StatesCopyWithImpl<$Res>
    implements _$StatesCopyWith<$Res> {
  __$StatesCopyWithImpl(_States _value, $Res Function(_States) _then)
      : super(_value, (v) => _then(v as _States));

  @override
  _States get _value => super._value as _States;

  @override
  $Res call({
    Object? stateName = freezed,
  }) {
    return _then(_States(
      stateName: stateName == freezed
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_States implements _States {
  const _$_States({this.stateName});

  factory _$_States.fromJson(Map<String, dynamic> json) =>
      _$$_StatesFromJson(json);

  @override
  final String? stateName;

  @override
  String toString() {
    return 'States(stateName: $stateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _States &&
            const DeepCollectionEquality().equals(other.stateName, stateName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stateName));

  @JsonKey(ignore: true)
  @override
  _$StatesCopyWith<_States> get copyWith =>
      __$StatesCopyWithImpl<_States>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatesToJson(this);
  }
}

abstract class _States implements States {
  const factory _States({String? stateName}) = _$_States;

  factory _States.fromJson(Map<String, dynamic> json) = _$_States.fromJson;

  @override
  String? get stateName;
  @override
  @JsonKey(ignore: true)
  _$StatesCopyWith<_States> get copyWith => throw _privateConstructorUsedError;
}

UserImages _$UserImagesFromJson(Map<String, dynamic> json) {
  return _UserImages.fromJson(json);
}

/// @nodoc
class _$UserImagesTearOff {
  const _$UserImagesTearOff();

  _UserImages call({String? imageId, String? imageUrl, bool? isPrimary}) {
    return _UserImages(
      imageId: imageId,
      imageUrl: imageUrl,
      isPrimary: isPrimary,
    );
  }

  UserImages fromJson(Map<String, Object?> json) {
    return UserImages.fromJson(json);
  }
}

/// @nodoc
const $UserImages = _$UserImagesTearOff();

/// @nodoc
mixin _$UserImages {
  String? get imageId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserImagesCopyWith<UserImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImagesCopyWith<$Res> {
  factory $UserImagesCopyWith(
          UserImages value, $Res Function(UserImages) then) =
      _$UserImagesCopyWithImpl<$Res>;
  $Res call({String? imageId, String? imageUrl, bool? isPrimary});
}

/// @nodoc
class _$UserImagesCopyWithImpl<$Res> implements $UserImagesCopyWith<$Res> {
  _$UserImagesCopyWithImpl(this._value, this._then);

  final UserImages _value;
  // ignore: unused_field
  final $Res Function(UserImages) _then;

  @override
  $Res call({
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_value.copyWith(
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: isPrimary == freezed
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserImagesCopyWith<$Res> implements $UserImagesCopyWith<$Res> {
  factory _$UserImagesCopyWith(
          _UserImages value, $Res Function(_UserImages) then) =
      __$UserImagesCopyWithImpl<$Res>;
  @override
  $Res call({String? imageId, String? imageUrl, bool? isPrimary});
}

/// @nodoc
class __$UserImagesCopyWithImpl<$Res> extends _$UserImagesCopyWithImpl<$Res>
    implements _$UserImagesCopyWith<$Res> {
  __$UserImagesCopyWithImpl(
      _UserImages _value, $Res Function(_UserImages) _then)
      : super(_value, (v) => _then(v as _UserImages));

  @override
  _UserImages get _value => super._value as _UserImages;

  @override
  $Res call({
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_UserImages(
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: isPrimary == freezed
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserImages implements _UserImages {
  const _$_UserImages({this.imageId, this.imageUrl, this.isPrimary});

  factory _$_UserImages.fromJson(Map<String, dynamic> json) =>
      _$$_UserImagesFromJson(json);

  @override
  final String? imageId;
  @override
  final String? imageUrl;
  @override
  final bool? isPrimary;

  @override
  String toString() {
    return 'UserImages(imageId: $imageId, imageUrl: $imageUrl, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserImages &&
            const DeepCollectionEquality().equals(other.imageId, imageId) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.isPrimary, isPrimary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageId),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(isPrimary));

  @JsonKey(ignore: true)
  @override
  _$UserImagesCopyWith<_UserImages> get copyWith =>
      __$UserImagesCopyWithImpl<_UserImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserImagesToJson(this);
  }
}

abstract class _UserImages implements UserImages {
  const factory _UserImages(
      {String? imageId, String? imageUrl, bool? isPrimary}) = _$_UserImages;

  factory _UserImages.fromJson(Map<String, dynamic> json) =
      _$_UserImages.fromJson;

  @override
  String? get imageId;
  @override
  String? get imageUrl;
  @override
  bool? get isPrimary;
  @override
  @JsonKey(ignore: true)
  _$UserImagesCopyWith<_UserImages> get copyWith =>
      throw _privateConstructorUsedError;
}
