part of 'categ_bloc.dart';

enum CategStatus { init, loading, success, error }
enum CategOperation {
  idle,
  createLoading,
  createSuccess,
  createError,
  updateLoading,
  updateSuccess,
  updateError,
  deleteLoading,
  deleteSuccess,
  deleteError,
}

@freezed
sealed class CategState with _$CategState {
  const factory CategState({
    @Default(CategStatus.init) CategStatus status,
    @Default(CategOperation.idle) CategOperation categOperation,
    @Default([]) List<CategModel> categList,
    @Default('') String selectedImageURL
  }) = _CategState;

  static CategState init() => const CategState(
    status: CategStatus.init,
    categOperation: CategOperation.idle,
    categList: [],
    selectedImageURL: ''
  );
}