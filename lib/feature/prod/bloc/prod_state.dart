part of 'prod_bloc.dart';

enum ProdStatus { init, loading, success, error }
enum ProdOperation {
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
sealed class ProdState with _$ProdState {
  const factory ProdState({
    @Default(ProdStatus.init) ProdStatus status,
    @Default(ProdOperation.idle) ProdOperation prodOperation,
    @Default([]) List<ProdModel> prodList,
    @Default('') String selectedImageURL
  }) = _ProdState;

  static ProdState init() => const ProdState(
    status: ProdStatus.init,
    prodOperation: ProdOperation.idle,
    prodList: [],
    selectedImageURL: ''
  );
}