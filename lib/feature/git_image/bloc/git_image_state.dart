part of 'git_image_bloc.dart';

enum GitImageStatus { init, loading, success, error }

enum GitImageOperation {
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
sealed class GitImageState with _$GitImageState {
  const factory GitImageState({
    @Default(GitImageStatus.init) GitImageStatus status,
    @Default(GitImageOperation.idle) GitImageOperation gitImageOperation,
    @Default([]) List<GitImageModel> gitImageList,
    @Default(null) FilePickerResult? filePicked,
  }) = _GitImageState;

  static GitImageState init() => const GitImageState();
}
