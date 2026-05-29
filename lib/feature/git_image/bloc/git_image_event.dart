part of 'git_image_bloc.dart';

@freezed
sealed class GitImageEvent with _$GitImageEvent {
  const factory GitImageEvent.init() = _InitEvent;

  // Read Git-Images
  const factory GitImageEvent.readGitImages() = _ReadGitImagesEvent;

  // Pick Image
  const factory GitImageEvent.pickImage({bool? reset}) = _PickImageEvent;

  // Create Git-Image
  const factory GitImageEvent.createGitImage({required String filename, required Uint8List bytes}) =
      _CreateGitImageEvent;

  // Update Git-Image
  const factory GitImageEvent.updateGitImage({
    required String id,
    required String gitImage,
  }) = _UpdateGitImageEvent;

  // Delete Git-Image
  const factory GitImageEvent.deleteGitImage({required String id}) =
      _DeleteGitImageEvent;
}
