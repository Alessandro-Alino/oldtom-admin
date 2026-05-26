// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_image_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GitImageResModel _$GitImageResModelFromJson(Map<String, dynamic> json) =>
    _GitImageResModel(
      sha: json['sha'] as String,
      url: json['url'] as String,
      tree: (json['tree'] as List<dynamic>)
          .map((e) => GitImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      truncated: json['truncated'] as bool,
    );

Map<String, dynamic> _$GitImageResModelToJson(_GitImageResModel instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'url': instance.url,
      'tree': instance.tree,
      'truncated': instance.truncated,
    };

_GitImageModel _$GitImageModelFromJson(Map<String, dynamic> json) =>
    _GitImageModel(
      path: json['path'] as String,
      mode: json['mode'] as String,
      type: json['type'] as String,
      sha: json['sha'] as String,
      size: (json['size'] as num?)?.toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$GitImageModelToJson(_GitImageModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'mode': instance.mode,
      'type': instance.type,
      'sha': instance.sha,
      'size': instance.size,
      'url': instance.url,
    };
