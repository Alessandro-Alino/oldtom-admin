import 'package:freezed_annotation/freezed_annotation.dart';

part 'categ_model.freezed.dart';
part 'categ_model.g.dart';

@freezed
sealed class CategModel with _$CategModel {
  const factory CategModel({
    @JsonKey(includeToJson: false) String? id,
    required String name,
    @Default('') String description,
    @Default('') String image
  }) = _CategModel;

  factory CategModel.fromJson(Map<String, dynamic> json) =>
      _$CategModelFromJson(json);
}