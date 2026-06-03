import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_image_model.freezed.dart';
part 'git_image_model.g.dart';

@freezed
sealed class GitImageModel with _$GitImageModel {
  const factory GitImageModel({
    required String name,
    required String path,
    required String sha,
    required int size,
    required String url,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'git_url') required String gitUrl,
    @JsonKey(name: 'download_url') required String downloadUrl,
    required String type,
  }) = _GitImageModel;

  factory GitImageModel.fromJson(Map<String, dynamic> json) =>
      _$GitImageModelFromJson(json);
}