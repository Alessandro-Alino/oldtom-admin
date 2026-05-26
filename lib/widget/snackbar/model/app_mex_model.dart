import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_mex_model.freezed.dart';

@freezed
sealed class AppMex with _$AppMex {
  const factory AppMex({required String mex, required MexType type}) =
  _AppMex;
}

enum MexType { info, error, warning, success }