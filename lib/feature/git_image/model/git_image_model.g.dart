// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GitImageModel _$GitImageModelFromJson(Map<String, dynamic> json) =>
    _GitImageModel(
      name: json['name'] as String,
      path: json['path'] as String,
      sha: json['sha'] as String,
      size: (json['size'] as num).toInt(),
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
      gitUrl: json['git_url'] as String,
      downloadUrl: json['download_url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$GitImageModelToJson(_GitImageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'size': instance.size,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'git_url': instance.gitUrl,
      'download_url': instance.downloadUrl,
      'type': instance.type,
    };

_UploadGitImageModel _$UploadGitImageModelFromJson(Map<String, dynamic> json) =>
    _UploadGitImageModel(
      fileName: json['fileName'] as String,
      base64Content: json['base64Content'] as String,
      commitMessage: json['commitMessage'] as String,
      sha: json['sha'] as String?,
    );

Map<String, dynamic> _$UploadGitImageModelToJson(
  _UploadGitImageModel instance,
) => <String, dynamic>{
  'fileName': instance.fileName,
  'base64Content': instance.base64Content,
  'commitMessage': instance.commitMessage,
  'sha': instance.sha,
};
