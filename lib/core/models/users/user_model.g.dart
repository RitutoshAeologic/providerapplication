// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: (json['gender'] as List<dynamic>?)
          ?.map((e) => Gender.fromJson(e as Map<String, dynamic>))
          .toList(),
      adhaarNo: json['adhaarNo'] as String?,
      bloodGroup: json['bloodGroup'] as String?,
      state: (json['state'] as List<dynamic>?)
          ?.map((e) => States.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] as String?,
      userImages: (json['userImages'] as List<dynamic>?)
          ?.map((e) => UserImages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'adhaarNo': instance.adhaarNo,
      'bloodGroup': instance.bloodGroup,
      'state': instance.state,
      'address': instance.address,
      'userImages': instance.userImages,
    };

_$_Gender _$$_GenderFromJson(Map<String, dynamic> json) => _$_Gender(
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_GenderToJson(_$_Gender instance) => <String, dynamic>{
      'description': instance.description,
    };

_$_States _$$_StatesFromJson(Map<String, dynamic> json) => _$_States(
      stateName: json['stateName'] as String?,
    );

Map<String, dynamic> _$$_StatesToJson(_$_States instance) => <String, dynamic>{
      'stateName': instance.stateName,
    };

_$_UserImages _$$_UserImagesFromJson(Map<String, dynamic> json) =>
    _$_UserImages(
      imageId: json['imageId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isPrimary: json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$$_UserImagesToJson(_$_UserImages instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'imageUrl': instance.imageUrl,
      'isPrimary': instance.isPrimary,
    };
