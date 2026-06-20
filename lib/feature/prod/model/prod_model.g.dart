// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProdModel _$ProdModelFromJson(Map<String, dynamic> json) => _ProdModel(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String? ?? '',
  image: json['image'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  categID:
      (json['categID'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProdModelToJson(_ProdModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'categID': instance.categID,
      'ingredients': instance.ingredients,
    };
