import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';

part 'prod_model.freezed.dart';
part 'prod_model.g.dart';

@freezed
sealed class ProdModel with _$ProdModel {
  const factory ProdModel({
    @JsonKey(includeToJson: false) String? id,
    required String name,
    @Default('') String description,
    @Default('') String image,
    @Default(0.0) double price,
    @Default([]) List<String> categID,
    @JsonKey(includeToJson: false) @Default([]) List<CategModel> categories,
    @Default([]) List<String> ingredients,
  }) = _ProdModel;

  factory ProdModel.fromJson(Map<String, dynamic> json) =>
      _$ProdModelFromJson(json);
}