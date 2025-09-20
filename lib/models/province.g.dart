// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Province _$ProvinceFromJson(Map<String, dynamic> json) => _Province(
  name: json['name'] as String,
  code: json['code'] as String,
  identifier: json['identifier'] as String,
  regionCode: json['regionCode'] as String,
);

Map<String, dynamic> _$ProvinceToJson(_Province instance) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'identifier': instance.identifier,
  'regionCode': instance.regionCode,
};
