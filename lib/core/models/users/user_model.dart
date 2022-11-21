import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {String? userName,
        String? userEmail,
        String? dateOfBirth,
        List<Gender>? gender,
        String? adhaarNo,
        String? bloodGroup,
        List<States>? state,
        String? address,
        List<UserImages>? userImages}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
@freezed
class Gender with _$Gender {
  const factory Gender(
      {String? description,}) = _Gender;

  factory Gender.fromJson(Map<String, dynamic> json) =>
      _$GenderFromJson(json);
}
@freezed
class States with _$States {
  const factory States(
      {String? stateName}) = _States;

  factory States.fromJson(Map<String, dynamic> json) =>
      _$StatesFromJson(json);
}

@freezed
class UserImages with _$UserImages {
  const factory UserImages(
      {String? imageId, String? imageUrl, bool? isPrimary}) = _UserImages;

  factory UserImages.fromJson(Map<String, dynamic> json) =>
      _$UserImagesFromJson(json);
}