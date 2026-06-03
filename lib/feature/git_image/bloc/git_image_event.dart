part of 'git_image_bloc.dart';

@freezed
sealed class GitImageEvent with _$GitImageEvent {
  const factory GitImageEvent.init({bool? resetStatus}) = _InitEvent;

  // Read Git-Images
  const factory GitImageEvent.readGitImages() = _ReadGitImagesEvent;

  // Pick Image
  const factory GitImageEvent.pickImage({bool? reset}) = _PickImageEvent;

  // Create Git-Image
  const factory GitImageEvent.createGitImage({
    required String filename,
    required PlatformFile file,
  }) = _CreateGitImageEvent;

  // Update Git-Image
  const factory GitImageEvent.updateGitImage({
    required String filename,
    required GitImageModel gitImage,
  }) = _UpdateGitImageEvent;

  // Delete Git-Image
  const factory GitImageEvent.deleteGitImage({
    required GitImageModel gitImage,
  }) = _DeleteGitImageEvent;
}
