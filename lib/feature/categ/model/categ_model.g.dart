// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categ_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategModel _$CategModelFromJson(Map<String, dynamic> json) => _CategModel(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$CategModelToJson(_CategModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
