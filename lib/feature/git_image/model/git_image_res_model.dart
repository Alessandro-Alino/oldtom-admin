import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_image_res_model.freezed.dart';
part 'git_image_res_model.g.dart';

@freezed
sealed class GitImageResModel with _$GitImageResModel {
  const factory GitImageResModel({
    required String sha,
    required String url,
    required List<GitImageModel> tree,
    required bool truncated,
  }) = _GitImageResModel;

  factory GitImageResModel.fromJson(Map<String, dynamic> json) =>
      _$GitImageResModelFromJson(json);
}

@freezed
sealed class GitImageModel with _$GitImageModel {
  const factory GitImageModel({
    required String path,
    required String mode,
    required String type,
    required String sha,
    int? size,
    required String url,
  }) = _GitImageModel;

  factory GitImageModel.fromJson(Map<String, dynamic> json) =>
      _$GitImageModelFromJson(json);
}